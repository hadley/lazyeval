.onLoad <- function(libname, pkgname) {
  loadNamespace("rlang")
  .Call(r_init_library, asNamespace(pkgname))
}
