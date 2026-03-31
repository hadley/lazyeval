#define R_NO_REMAP
#include <rlang.h>
#include <Rinternals.h>
#include "utils.h"

static SEXP make_lazy_obj(SEXP expr, SEXP env);

static SEXP binding_as_lazy(SEXP sym, SEXP env, int follow_symbols) {
  while (1) {
    SEXP where = r_env_until(env, sym, r_envs.empty);
    if (where == r_envs.empty) {
      Rf_error("object '%s' not found", CHAR(PRINTNAME(sym)));
    }

    switch (r_env_binding_type(where, sym)) {
    case R_ENV_BINDING_TYPE_unbound:
      Rf_error("object '%s' not found", CHAR(PRINTNAME(sym)));

    case R_ENV_BINDING_TYPE_missing:
      return make_lazy_obj(R_MissingArg, R_EmptyEnv);

    case R_ENV_BINDING_TYPE_value:
    case R_ENV_BINDING_TYPE_forced:
    case R_ENV_BINDING_TYPE_active: {
      if (follow_symbols && TYPEOF(sym) == SYMSXP && is_lazy_load_binding(where, sym)) {
        return make_lazy_obj(sym, env);
      }

      SEXP value = PROTECT(r_env_get(where, sym));
      SEXP out = make_lazy_obj(value, R_EmptyEnv);
      UNPROTECT(1);
      return out;
    }

    case R_ENV_BINDING_TYPE_delayed: {
      SEXP expr = r_env_binding_delayed_expr(where, sym);
      SEXP expr_env = r_env_binding_delayed_env(where, sym);

      if (follow_symbols && TYPEOF(expr) == SYMSXP) {
        SEXP inner_where = r_env_until(expr_env, expr, r_envs.empty);

        if (inner_where == r_envs.empty)
          return make_lazy_obj(expr, expr_env);

        if (r_env_binding_type(inner_where, expr) == R_ENV_BINDING_TYPE_missing)
          return make_lazy_obj(expr, expr_env);

        if (is_lazy_load_binding(inner_where, expr))
          return make_lazy_obj(expr, expr_env);

        sym = expr;
        env = expr_env;
        continue;
      }

      return make_lazy_obj(expr, expr_env);
    }
    }
  }
}

static SEXP make_lazy_obj(SEXP expr, SEXP env) {
  SEXP lazy = PROTECT(Rf_allocVector(VECSXP, 2));
  MARK_NOT_MUTABLE(expr);
  SET_VECTOR_ELT(lazy, 0, expr);
  SET_VECTOR_ELT(lazy, 1, env);

  SEXP names = PROTECT(Rf_allocVector(STRSXP, 2));
  SET_STRING_ELT(names, 0, Rf_mkChar("expr"));
  SET_STRING_ELT(names, 1, Rf_mkChar("env"));

  Rf_setAttrib(lazy, Rf_install("names"), names);
  Rf_setAttrib(lazy, Rf_install("class"), PROTECT(Rf_mkString("lazy")));

  UNPROTECT(3);
  return lazy;
}

SEXP make_lazy(SEXP name, SEXP env, SEXP follow_symbols_) {
  int follow_symbols = Rf_asLogical(follow_symbols_);
  return binding_as_lazy(name, env, follow_symbols);
}

int is_missing(SEXP x) {
  return TYPEOF(x) == SYMSXP && x == R_MissingArg;
}

SEXP make_lazy_dots(SEXP env, SEXP follow_symbols_, SEXP ignore_empty_) {
  int follow_symbols = Rf_asLogical(follow_symbols_);
  int ignore_empty = Rf_asLogical(ignore_empty_);

  env = r_env_until_dots(env);
  if (env == r_envs.empty) {
    Rf_error("'...' used in an incorrect context");
  }

  r_ssize n_dots = r_env_dots_length(env);

  int n = 0;
  for (r_ssize i = 0; i < n_dots; ++i) {
    if (ignore_empty && r_env_dot_type(env, i) == DOT_TYPE_missing)
      continue;
    ++n;
  }

  SEXP lazy_dots = PROTECT(Rf_allocVector(VECSXP, n));
  SEXP dot_names = r_env_dots_names(env);
  SEXP names = PROTECT(Rf_allocVector(STRSXP, n));

  for (int i = 0; i < n; ++i) {
    SET_STRING_ELT(names, i, Rf_mkChar(""));
  }

  int j = 0;
  for (r_ssize i = 0; i < n_dots; ++i) {
    r_dot_type_t type = r_env_dot_type(env, i);

    if (ignore_empty && type == DOT_TYPE_missing)
      continue;

    SEXP lazy;
    switch (type) {
    case DOT_TYPE_missing:
      lazy = make_lazy_obj(R_MissingArg, R_EmptyEnv);
      break;

    case DOT_TYPE_value:
    case DOT_TYPE_forced: {
      SEXP dot = PROTECT(r_env_dot_get(env, i));
      lazy = make_lazy_obj(dot, R_EmptyEnv);
      UNPROTECT(1);
      break;
    }

    case DOT_TYPE_delayed: {
      SEXP expr = r_env_dot_delayed_expr(env, i);
      SEXP expr_env = r_env_dot_delayed_env(env, i);

      if (follow_symbols && TYPEOF(expr) == SYMSXP) {
        SEXP inner_where = r_env_until(expr_env, expr, r_envs.empty);

        if (inner_where == r_envs.empty) {
          lazy = make_lazy_obj(expr, expr_env);
        } else if (r_env_binding_type(inner_where, expr) == R_ENV_BINDING_TYPE_missing) {
          lazy = make_lazy_obj(expr, expr_env);
        } else if (is_lazy_load_binding(inner_where, expr)) {
          lazy = make_lazy_obj(expr, expr_env);
        } else {
          lazy = binding_as_lazy(expr, expr_env, follow_symbols);
        }
      } else {
        lazy = make_lazy_obj(expr, expr_env);
      }
      break;
    }
    }

    SET_VECTOR_ELT(lazy_dots, j, lazy);

    if (dot_names != R_NilValue) {
      SEXP nm = STRING_ELT(dot_names, i);
      if (nm != NA_STRING && CHAR(nm)[0] != '\0')
        SET_STRING_ELT(names, j, nm);
    }

    ++j;
  }

  if (n > 0) {
    Rf_setAttrib(lazy_dots, Rf_install("names"), names);
  }
  Rf_setAttrib(lazy_dots, Rf_install("class"), PROTECT(Rf_mkString("lazy_dots")));

  UNPROTECT(3);
  return lazy_dots;
}
