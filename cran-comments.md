
This should fix the rchk warnings.

## Test environments

* local OS X install, R-release
* ubuntu 12.04, R 3.1 -> R-devel
* win-builder (R-devel)


## R CMD check results

0 errors | 0 warnings | 0 notes


## revdepcheck results

I haven't checked the reverse dependencies because the only changes are additional `PROTECT()`.
