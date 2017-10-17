#include <Rinternals.h>
#include <R_ext/Rdynload.h>

extern SEXP env(SEXP);
extern SEXP expr_env_(SEXP, SEXP);
extern SEXP expr_find_(SEXP, SEXP);
extern SEXP interp_(SEXP, SEXP, SEXP);
extern SEXP lhs(SEXP);
extern SEXP lhs_name(SEXP);
extern SEXP make_lazy(SEXP, SEXP, SEXP);
extern SEXP make_lazy_dots(SEXP, SEXP, SEXP);
extern SEXP rhs(SEXP);

static const R_CallMethodDef call_entries[] = {
  {"lazyeval_env",                  (DL_FUNC) &env, 1},
  {"lazyeval_expr_env_",            (DL_FUNC) &expr_env_, 2},
  {"lazyeval_expr_find_",           (DL_FUNC) &expr_find_, 2},
  {"lazyeval_interp_",              (DL_FUNC) &interp_, 3},
  {"lazyeval_lhs",                  (DL_FUNC) &lhs, 1},
  {"lazyeval_lhs_name",             (DL_FUNC) &lhs_name, 1},
  {"lazyeval_make_lazy",            (DL_FUNC) &make_lazy, 3},
  {"lazyeval_make_lazy_dots",       (DL_FUNC) &make_lazy_dots, 3},
  {"lazyeval_rhs",                  (DL_FUNC) &rhs, 1},
  {NULL, NULL, 0}
};

void R_init_lazyeval(DllInfo* dll) {
  R_registerRoutines(dll, NULL, call_entries, NULL, NULL);
  R_useDynamicSymbols(dll, FALSE);
}
