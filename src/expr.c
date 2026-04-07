#define R_NO_REMAP
#include <rlang.h>
#include <Rinternals.h>
#include "utils.h"

static SEXP binding_expr(SEXP env, SEXP sym) {
  while (1) {
    SEXP where = r_env_until(env, sym, r_envs.empty);

    switch (r_env_binding_type(where, sym)) {
    case R_ENV_BINDING_TYPE_unbound:
      Rf_error("object '%s' not found", CHAR(PRINTNAME(sym)));

    case R_ENV_BINDING_TYPE_missing:
      return R_MissingArg;

    case R_ENV_BINDING_TYPE_value:
    case R_ENV_BINDING_TYPE_forced:
    case R_ENV_BINDING_TYPE_active:
      return r_env_get(where, sym);

    case R_ENV_BINDING_TYPE_delayed: {
      SEXP expr = r_env_binding_delayed_expr(where, sym);
      SEXP expr_env = r_env_binding_delayed_env(where, sym);

      if (TYPEOF(expr) != SYMSXP)
        return expr;

      SEXP inner_where = r_env_until(expr_env, expr, r_envs.empty);

      if (inner_where == r_envs.empty)
        return expr;

      switch (r_env_binding_type(inner_where, expr)) {
      case R_ENV_BINDING_TYPE_forced:
        if (is_forced_lazy_load_binding(inner_where, expr)) {
          return expr;
        }
        return r_env_binding_forced_expr(inner_where, expr);

      case R_ENV_BINDING_TYPE_value:
      case R_ENV_BINDING_TYPE_active:
        return expr;

      case R_ENV_BINDING_TYPE_delayed:
        if (is_lazy_load_binding(inner_where, expr))
          return expr;

        sym = expr;
        env = expr_env;
        continue;

      default:
        return expr;
      }
    }
    }
  }
}

// Return NULL if not a promise or has already been forced
static SEXP binding_expr_env(SEXP env, SEXP sym) {
  while (1) {
    SEXP where = r_env_until(env, sym, r_envs.empty);

    if (where == r_envs.empty)
      Rf_error("object '%s' not found", CHAR(PRINTNAME(sym)));

    // recurse until we find the real promise, not a promise of a promise
    switch (r_env_binding_type(where, sym)) {
    case R_ENV_BINDING_TYPE_unbound:
      Rf_error("object '%s' not found", CHAR(PRINTNAME(sym)));

    // This is a value binding, or the
    // promise has already been forced so can't go further
    case R_ENV_BINDING_TYPE_missing:
    case R_ENV_BINDING_TYPE_value:
    case R_ENV_BINDING_TYPE_forced:
    case R_ENV_BINDING_TYPE_active:
      return R_NilValue;

    // If the promise is threaded through multiple functions, we'll
    // get some symbols along the way. If the symbol is bound to a promise
    // keep going on up
    case R_ENV_BINDING_TYPE_delayed: {
      SEXP expr = r_env_binding_delayed_expr(where, sym);
      SEXP expr_env = r_env_binding_delayed_env(where, sym);

      if (TYPEOF(expr) != SYMSXP)
        return expr_env;

      SEXP inner_where = r_env_until(expr_env, expr, r_envs.empty);

      if (inner_where == r_envs.empty)
        return expr_env;

      switch (r_env_binding_type(inner_where, expr)) {
      case R_ENV_BINDING_TYPE_delayed:
        if (is_lazy_load_binding(inner_where, expr))
          return expr_env;

        sym = expr;
        env = expr_env;
        continue;

      case R_ENV_BINDING_TYPE_unbound:
        return expr_env;

      case R_ENV_BINDING_TYPE_missing:
      case R_ENV_BINDING_TYPE_value:
      case R_ENV_BINDING_TYPE_forced:
      case R_ENV_BINDING_TYPE_active:
        return R_NilValue;
      }
    }
    }
  }
}

SEXP expr_find_(SEXP name, SEXP env) {
  return binding_expr(env, name);
}

SEXP expr_env_(SEXP name, SEXP env) {
  return binding_expr_env(env, name);
}
