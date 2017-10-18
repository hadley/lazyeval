# atlantistools

Version: 0.4.3

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    ! File ended while scanning use of \@@BOOKMARK.
    <inserted text> 
                    \par 
    l.107 \begin{document}
    
    pandoc: Error producing PDF from TeX source
    Error: processing vignette 'model-calibration.Rmd' failed with diagnostics:
    pandoc document conversion failed with error 43
    Execution halted
    ```

# condformat

Version: 0.6.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      > 
      > test_check("condformat")
      Unable to find any JVMs matching version "(null)".
      No Java runtime present, try --request to install.
      1. Error: condformat2excel generates a file (@test_rendering.R#22) -------------
      Please install the xlsx package in order to export to excel
      1: condformat2excel(condformat(head(iris, n = rows_to_write)), filename = filename) at testthat/test_rendering.R:22
      2: stop("Please install the xlsx package in order to export to excel")
      
      testthat results ================================================================
      OK: 53 SKIPPED: 0 FAILED: 1
      1. Error: condformat2excel generates a file (@test_rendering.R#22) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking dependencies in R code ... NOTE
    ```
    Unable to find any JVMs matching version "(null)".
    No Java runtime present, try --request to install.
    Unable to find any JVMs matching version "(null)".
    No Java runtime present, try --request to install.
    Namespace in Imports field not imported from: ‘utils’
      All declared Imports should be used.
    ```

# cpr

Version: 0.2.3

## In both

*   checking whether package ‘cpr’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/Users/lionel/Dropbox/Projects/R/hadley/lazyeval/revdep/checks/cpr/new/cpr.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘cpr’ ...
** package ‘cpr’ successfully unpacked and MD5 sums checked
** libs
clang++ -std=gnu++11 -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG  -I"/Users/lionel/Dropbox/Projects/R/hadley/lazyeval/revdep/library/cpr/Rcpp/include" -I"/Users/lionel/Dropbox/Projects/R/hadley/lazyeval/revdep/library/cpr/RcppArmadillo/include" -I/usr/local/include  -I../inst/include -DARMA_64BIT_WORD -fPIC  -Wall -g -O2 -c RcppExports.cpp -o RcppExports.o
clang++ -std=gnu++11 -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG  -I"/Users/lionel/Dropbox/Projects/R/hadley/lazyeval/revdep/library/cpr/Rcpp/include" -I"/Users/lionel/Dropbox/Projects/R/hadley/lazyeval/revdep/library/cpr/RcppArmadillo/include" -I/usr/local/include  -I../inst/include -DARMA_64BIT_WORD -fPIC  -Wall -g -O2 -c boehm.cpp -o boehm.o
clang++ -std=gnu++11 -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG  -I"/Users/lionel/Dropbox/Projects/R/hadley/lazyeval/revdep/library/cpr/Rcpp/include" -I"/Users/lionel/Dropbox/Projects/R/hadley/lazyeval/revdep/library/cpr/RcppArmadillo/include" -I/usr/local/include  -I../inst/include -DARMA_64BIT_WORD -fPIC  -Wall -g -O2 -c bsplines.cpp -o bsplines.o
bsplines.cpp:24:10: warning: unused variable 'a' [-Wunused-variable]
  double a = 0.0;
         ^
bsplines.cpp:25:10: warning: unused variable 'b' [-Wunused-variable]
  double b = 0.0;
         ^
2 warnings generated.
clang++ -std=gnu++11 -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG  -I"/Users/lionel/Dropbox/Projects/R/hadley/lazyeval/revdep/library/cpr/Rcpp/include" -I"/Users/lionel/Dropbox/Projects/R/hadley/lazyeval/revdep/library/cpr/RcppArmadillo/include" -I/usr/local/include  -I../inst/include -DARMA_64BIT_WORD -fPIC  -Wall -g -O2 -c cpr.cpp -o cpr.o
clang++ -std=gnu++11 -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG  -I"/Users/lionel/Dropbox/Projects/R/hadley/lazyeval/revdep/library/cpr/Rcpp/include" -I"/Users/lionel/Dropbox/Projects/R/hadley/lazyeval/revdep/library/cpr/RcppArmadillo/include" -I/usr/local/include  -I../inst/include -DARMA_64BIT_WORD -fPIC  -Wall -g -O2 -c diag_only.cpp -o diag_only.o
clang++ -std=gnu++11 -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG  -I"/Users/lionel/Dropbox/Projects/R/hadley/lazyeval/revdep/library/cpr/Rcpp/include" -I"/Users/lionel/Dropbox/Projects/R/hadley/lazyeval/revdep/library/cpr/RcppArmadillo/include" -I/usr/local/include  -I../inst/include -DARMA_64BIT_WORD -fPIC  -Wall -g -O2 -c matrix_rank.cpp -o matrix_rank.o
clang -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG  -I"/Users/lionel/Dropbox/Projects/R/hadley/lazyeval/revdep/library/cpr/Rcpp/include" -I"/Users/lionel/Dropbox/Projects/R/hadley/lazyeval/revdep/library/cpr/RcppArmadillo/include" -I/usr/local/include   -fPIC  -Wall  -pedantic -O0 -c registerDynamicSymbol.c -o registerDynamicSymbol.o
clang++ -std=gnu++11 -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG  -I"/Users/lionel/Dropbox/Projects/R/hadley/lazyeval/revdep/library/cpr/Rcpp/include" -I"/Users/lionel/Dropbox/Projects/R/hadley/lazyeval/revdep/library/cpr/RcppArmadillo/include" -I/usr/local/include  -I../inst/include -DARMA_64BIT_WORD -fPIC  -Wall -g -O2 -c tensors.cpp -o tensors.o
clang++ -std=gnu++11 -dynamiclib -Wl,-headerpad_max_install_names -undefined dynamic_lookup -single_module -multiply_defined suppress -L/Library/Frameworks/R.framework/Resources/lib -L/usr/local/lib -o cpr.so RcppExports.o boehm.o bsplines.o cpr.o diag_only.o matrix_rank.o registerDynamicSymbol.o tensors.o -L/Library/Frameworks/R.framework/Resources/lib -lRlapack -L/Library/Frameworks/R.framework/Resources/lib -lRblas -L/usr/local/gfortran/lib/gcc/x86_64-apple-darwin15/6.1.0 -L/usr/local/gfortran/lib -lgfortran -lquadmath -lm -F/Library/Frameworks/R.framework/.. -framework R -Wl,-framework -Wl,CoreFoundation
ld: warning: directory not found for option '-L/usr/local/gfortran/lib/gcc/x86_64-apple-darwin15/6.1.0'
ld: warning: directory not found for option '-L/usr/local/gfortran/lib'
ld: library not found for -lquadmath
clang: error: linker command failed with exit code 1 (use -v to see invocation)
make: *** [cpr.so] Error 1
ERROR: compilation failed for package ‘cpr’
* removing ‘/Users/lionel/Dropbox/Projects/R/hadley/lazyeval/revdep/checks/cpr/new/cpr.Rcheck/cpr’

```
### CRAN

```
* installing *source* package ‘cpr’ ...
** package ‘cpr’ successfully unpacked and MD5 sums checked
** libs
clang++ -std=gnu++11 -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG  -I"/Users/lionel/Dropbox/Projects/R/hadley/lazyeval/revdep/library/cpr/Rcpp/include" -I"/Users/lionel/Dropbox/Projects/R/hadley/lazyeval/revdep/library/cpr/RcppArmadillo/include" -I/usr/local/include  -I../inst/include -DARMA_64BIT_WORD -fPIC  -Wall -g -O2 -c RcppExports.cpp -o RcppExports.o
clang++ -std=gnu++11 -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG  -I"/Users/lionel/Dropbox/Projects/R/hadley/lazyeval/revdep/library/cpr/Rcpp/include" -I"/Users/lionel/Dropbox/Projects/R/hadley/lazyeval/revdep/library/cpr/RcppArmadillo/include" -I/usr/local/include  -I../inst/include -DARMA_64BIT_WORD -fPIC  -Wall -g -O2 -c boehm.cpp -o boehm.o
clang++ -std=gnu++11 -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG  -I"/Users/lionel/Dropbox/Projects/R/hadley/lazyeval/revdep/library/cpr/Rcpp/include" -I"/Users/lionel/Dropbox/Projects/R/hadley/lazyeval/revdep/library/cpr/RcppArmadillo/include" -I/usr/local/include  -I../inst/include -DARMA_64BIT_WORD -fPIC  -Wall -g -O2 -c bsplines.cpp -o bsplines.o
bsplines.cpp:24:10: warning: unused variable 'a' [-Wunused-variable]
  double a = 0.0;
         ^
bsplines.cpp:25:10: warning: unused variable 'b' [-Wunused-variable]
  double b = 0.0;
         ^
2 warnings generated.
clang++ -std=gnu++11 -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG  -I"/Users/lionel/Dropbox/Projects/R/hadley/lazyeval/revdep/library/cpr/Rcpp/include" -I"/Users/lionel/Dropbox/Projects/R/hadley/lazyeval/revdep/library/cpr/RcppArmadillo/include" -I/usr/local/include  -I../inst/include -DARMA_64BIT_WORD -fPIC  -Wall -g -O2 -c cpr.cpp -o cpr.o
clang++ -std=gnu++11 -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG  -I"/Users/lionel/Dropbox/Projects/R/hadley/lazyeval/revdep/library/cpr/Rcpp/include" -I"/Users/lionel/Dropbox/Projects/R/hadley/lazyeval/revdep/library/cpr/RcppArmadillo/include" -I/usr/local/include  -I../inst/include -DARMA_64BIT_WORD -fPIC  -Wall -g -O2 -c diag_only.cpp -o diag_only.o
clang++ -std=gnu++11 -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG  -I"/Users/lionel/Dropbox/Projects/R/hadley/lazyeval/revdep/library/cpr/Rcpp/include" -I"/Users/lionel/Dropbox/Projects/R/hadley/lazyeval/revdep/library/cpr/RcppArmadillo/include" -I/usr/local/include  -I../inst/include -DARMA_64BIT_WORD -fPIC  -Wall -g -O2 -c matrix_rank.cpp -o matrix_rank.o
clang -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG  -I"/Users/lionel/Dropbox/Projects/R/hadley/lazyeval/revdep/library/cpr/Rcpp/include" -I"/Users/lionel/Dropbox/Projects/R/hadley/lazyeval/revdep/library/cpr/RcppArmadillo/include" -I/usr/local/include   -fPIC  -Wall  -pedantic -O0 -c registerDynamicSymbol.c -o registerDynamicSymbol.o
clang++ -std=gnu++11 -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG  -I"/Users/lionel/Dropbox/Projects/R/hadley/lazyeval/revdep/library/cpr/Rcpp/include" -I"/Users/lionel/Dropbox/Projects/R/hadley/lazyeval/revdep/library/cpr/RcppArmadillo/include" -I/usr/local/include  -I../inst/include -DARMA_64BIT_WORD -fPIC  -Wall -g -O2 -c tensors.cpp -o tensors.o
clang++ -std=gnu++11 -dynamiclib -Wl,-headerpad_max_install_names -undefined dynamic_lookup -single_module -multiply_defined suppress -L/Library/Frameworks/R.framework/Resources/lib -L/usr/local/lib -o cpr.so RcppExports.o boehm.o bsplines.o cpr.o diag_only.o matrix_rank.o registerDynamicSymbol.o tensors.o -L/Library/Frameworks/R.framework/Resources/lib -lRlapack -L/Library/Frameworks/R.framework/Resources/lib -lRblas -L/usr/local/gfortran/lib/gcc/x86_64-apple-darwin15/6.1.0 -L/usr/local/gfortran/lib -lgfortran -lquadmath -lm -F/Library/Frameworks/R.framework/.. -framework R -Wl,-framework -Wl,CoreFoundation
ld: warning: directory not found for option '-L/usr/local/gfortran/lib/gcc/x86_64-apple-darwin15/6.1.0'
ld: warning: directory not found for option '-L/usr/local/gfortran/lib'
ld: library not found for -lquadmath
clang: error: linker command failed with exit code 1 (use -v to see invocation)
make: *** [cpr.so] Error 1
ERROR: compilation failed for package ‘cpr’
* removing ‘/Users/lionel/Dropbox/Projects/R/hadley/lazyeval/revdep/checks/cpr/old/cpr.Rcheck/cpr’

```
# emil

Version: 2.2.8

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘Rcpp’
      All declared Imports should be used.
    ```

# eyetrackingR

Version: 0.1.6

## In both

*   checking examples ... ERROR
    ```
    ...
    +                                time_column = "TimeFromTrialOnset",
    +                                trackloss_column = "TrackLoss",
    +                                aoi_columns = c('Animate','Inanimate'),
    +                                treat_non_aoi_looks_as_missing = TRUE )
    `mutate_each()` is deprecated.
    Use `mutate_all()`, `mutate_at()` or `mutate_if()` instead.
    To map `funs` over a selection of variables, use `mutate_at()`
    > response_window <- subset_by_window(data, window_start_time = 15500, window_end_time = 21000, 
    +                                     rezero = FALSE)
    Avg. window length in new data will be 5500
    > response_time <- make_time_sequence_data(response_window, time_bin_size = 500, aois = "Animate", 
    +                                          predictor_columns = "Sex")
    > 
    > time_cluster_data <- make_time_cluster_data(data = response_time, predictor_column = "SexM", 
    +                          aoi = "Animate", test = "lmer", 
    +                          threshold = 1.5, 
    +                          formula = LogitAdjusted ~ Sex + (1|Trial) + (1|ParticipantName))
    Error in UseMethod("analyze_time_bins") : 
      no applicable method for 'analyze_time_bins' applied to an object of class "data.frame"
    Calls: make_time_cluster_data ... make_time_cluster_data.time_sequence_data -> do.call -> <Anonymous>
    Execution halted
    ```

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      Computing t.test for each time bin...
      Computing t.test for each time bin...
      `mutate_each()` is deprecated.
      Use `mutate_all()`, `mutate_at()` or `mutate_if()` instead.
      To map `funs` over a selection of variables, use `mutate_at()`
      Avg. window length in new data will be 5500
      Performing Trackloss Analysis...
      Will exclude trials whose trackloss proportion is greater than : 0.25
      	...removed  33  trials.
      Error in UseMethod("make_time_cluster_data") : 
        no applicable method for 'make_time_cluster_data' applied to an object of class "data.frame"
      Calls: test_check ... source_file -> eval -> eval -> make_time_cluster_data
      testthat results ================================================================
      OK: 38 SKIPPED: 0 FAILED: 0
      Execution halted
    ```

# flextable

Version: 0.3.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘magrittr’
      All declared Imports should be used.
    ```

# foghorn

Version: 0.4.4

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      testthat results ================================================================
      OK: 49 SKIPPED: 0 FAILED: 10
      1.  Failure: output of summary cran results (@test-foghorn.R#176) 
      2.  Failure: output of summary cran results (@test-foghorn.R#178) 
      3.  Failure: output of summary cran results (@test-foghorn.R#189) 
      4.  Failure: output of summary cran results (@test-foghorn.R#201) 
      5.  Failure: output of summary cran results (@test-foghorn.R#213) 
      6.  Failure: output of summary cran results (@test-foghorn.R#226) 
      7.  Failure: output of summary cran results (@test-foghorn.R#233) 
      8.  Failure: output of summary cran results (@test-foghorn.R#239) 
      9.  Failure: output of show cran results (@test-foghorn.R#264) 
      10. Failure: output of show cran results (@test-foghorn.R#266) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# gaiah

Version: 0.0.2

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘ggplot2’ ‘maptools’ ‘rgeos’ ‘stringr’ ‘tidyr’
      All declared Imports should be used.
    ```

# GenomicDataCommons

Version: 1.0.5

## In both

*   checking R code for possible problems ... NOTE
    ```
    default_fields.character: no visible binding for global variable
      ‘defaults’
    Undefined global functions or variables:
      defaults
    ```

*   checking Rd \usage sections ... NOTE
    ```
    S3 methods shown with full name in documentation object 'as.data.frame.GDCResults':
      ‘as.data.frame.GDCResults’
    
    The \usage entries for S3 methods should use the \method markup and not
    their full name.
    See chapter ‘Writing R documentation files’ in the ‘Writing R
    Extensions’ manual.
    ```

# geoparser

Version: 0.1.1

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      2. Error: no problems if no results (@test_query.R#26) -------------------------
      HTTP failure: 401
      1: geoparser_q(text_input = "no placename here") at testthat/test_query.R:26
      2: lapply(text_input, total, key = key)
      3: FUN(X[[i]], ...)
      4: geoparser_check(temp)
      5: stop("HTTP failure: ", status, call. = FALSE)
      
      testthat results ================================================================
      OK: 3 SKIPPED: 0 FAILED: 2
      1. Error: query returns a list of data.frames (@test_query.R#4) 
      2. Error: no problems if no results (@test_query.R#26) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Quitting from lines 34-37 (geoparser.Rmd) 
    Error: processing vignette 'geoparser.Rmd' failed with diagnostics:
    HTTP failure: 401
    Execution halted
    ```

# ggguitar

Version: 0.1.1

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘gridExtra’ ‘lazyeval’ ‘readr’
      All declared Imports should be used.
    ```

# ggplot2

Version: 2.2.1

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘reshape2’
      All declared Imports should be used.
    ```

# ggraptR

Version: 1.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      > 
      > if (Sys.getenv("NOT_CRAN") == "true") {  # like global skip_on_cran
      +   Sys.setenv("R_TESTS" = "")  # accroding to https://github.com/hadley/testthat/issues/144
      +   test_check("ggraptR")
      + }
      
      Initial plotError in file(filename, "r", encoding = encoding) : 
        cannot open the connection
      Calls: test_check ... source -> withVisible -> eval -> eval -> source -> file
      In addition: Warning message:
      In file(filename, "r", encoding = encoding) :
        cannot open file '../../inst/ggraptR/functions/helper.R': No such file or directory
      testthat results ================================================================
      OK: 0 SKIPPED: 0 FAILED: 0
      Execution halted
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘DBI’ ‘GGally’ ‘RColorBrewer’ ‘Rcpp’ ‘assertthat’ ‘backports’
      ‘colorspace’ ‘colourpicker’ ‘evaluate’ ‘futile.options’ ‘gdtools’
      ‘gtable’ ‘htmltools’ ‘htmlwidgets’ ‘httpuv’ ‘labeling’ ‘lambda.r’
      ‘lazyeval’ ‘magrittr’ ‘miniUI’ ‘munsell’ ‘plyr’ ‘reshape’ ‘rprojroot’
      ‘scales’ ‘stringi’ ‘stringr’ ‘svglite’ ‘tibble’ ‘xtable’ ‘yaml’
      All declared Imports should be used.
    ```

# ggstance

Version: 0.3

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘lazyeval’
      All declared Imports should be used.
    ```

# ggvis

Version: 0.4.3

## In both

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘plyr’
    ```

# grattan

Version: 1.5.1.2

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘taxstats’
    ```

# gutenbergr

Version: 0.1.3

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 13617 marked UTF-8 strings
    ```

# harrietr

Version: 0.2.2

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘ggplot2’
      All declared Imports should be used.
    ```

# HTSSIP

Version: 1.2.0

## In both

*   R CMD check timed out
    

# hurricaneexposure

Version: 0.0.1

## In both

*   checking package dependencies ... NOTE
    ```
    Package suggested but not available for checking: ‘hurricaneexposuredata’
    ```

# huxtable

Version: 1.0.0

## In both

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘xtable’
    ```

# jqr

Version: 1.0.0

## In both

*   checking whether package ‘jqr’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/Users/lionel/Dropbox/Projects/R/hadley/lazyeval/revdep/checks/jqr/new/jqr.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘jqr’ ...
** package ‘jqr’ successfully unpacked and MD5 sums checked
Using PKG_CFLAGS=-I/usr/local/opt/jq/include
Using PKG_LIBS=-L/usr/local/lib -ljq
------------------------- ANTICONF ERROR ---------------------------
Configuration failed because libjq was not found.
On Ubuntu 14.04 or 16.04 you can use the PPA:
  sudo add-apt-repository -y ppa:opencpu/jq
  sudo apt-get update
  sudo apt-get install libjq-dev
On other sytems try installing:
 * deb: libjq-dev (Debian, Ubuntu 16.10 and up).
 * rpm: jq-devel (Fedora, EPEL)
 * csw: libjq_dev (Solaris)
 * brew: jq (OSX)
If  is already installed set INCLUDE_DIR and LIB_DIR manually via:
R CMD INSTALL --configure-vars='INCLUDE_DIR=... LIB_DIR=...'
--------------------------------------------------------------------
ERROR: configuration failed for package ‘jqr’
* removing ‘/Users/lionel/Dropbox/Projects/R/hadley/lazyeval/revdep/checks/jqr/new/jqr.Rcheck/jqr’

```
### CRAN

```
* installing *source* package ‘jqr’ ...
** package ‘jqr’ successfully unpacked and MD5 sums checked
Using PKG_CFLAGS=-I/usr/local/opt/jq/include
Using PKG_LIBS=-L/usr/local/lib -ljq
------------------------- ANTICONF ERROR ---------------------------
Configuration failed because libjq was not found.
On Ubuntu 14.04 or 16.04 you can use the PPA:
  sudo add-apt-repository -y ppa:opencpu/jq
  sudo apt-get update
  sudo apt-get install libjq-dev
On other sytems try installing:
 * deb: libjq-dev (Debian, Ubuntu 16.10 and up).
 * rpm: jq-devel (Fedora, EPEL)
 * csw: libjq_dev (Solaris)
 * brew: jq (OSX)
If  is already installed set INCLUDE_DIR and LIB_DIR manually via:
R CMD INSTALL --configure-vars='INCLUDE_DIR=... LIB_DIR=...'
--------------------------------------------------------------------
ERROR: configuration failed for package ‘jqr’
* removing ‘/Users/lionel/Dropbox/Projects/R/hadley/lazyeval/revdep/checks/jqr/old/jqr.Rcheck/jqr’

```
# lidR

Version: 1.3.1

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘Rcpp’ ‘memoise’
      All declared Imports should be used.
    ```

# loopr

Version: 1.0.1

## In both

*   checking R code for possible problems ... NOTE
    ```
    amendColumns: no visible global function definition for ‘setNames’
    fillColumns: no visible global function definition for ‘setNames’
    Undefined global functions or variables:
      setNames
    Consider adding
      importFrom("stats", "setNames")
    to your NAMESPACE file.
    ```

# lplyr

Version: 0.1.6

## In both

*   checking examples ... ERROR
    ```
    ...
    
    > rename(xs, x0 = x1)
    $x0
    [1] 1 2 3
    
    $x2
    [1] 2 3 4 5
    
    $x3
    $x3[[1]]
    [1] "alpha"
    
    $x3[[2]]
    [1] "beta"  "gamma"
    
    
    > select(xs, -x3)
    Error in select.list(xs, -x3) : 
      select.list() cannot be used non-interactively
    Calls: select -> select.list
    Execution halted
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
    Attaching package: 'dplyr'
    
    The following objects are masked from 'package:stats':
    
        filter, lag
    
    The following objects are masked from 'package:base':
    
        intersect, setdiff, setequal, union
    
    
    Attaching package: 'lplyr'
    
    The following object is masked from 'package:dplyr':
    
        pull
    
    Quitting from lines 22-30 (lplyr-vignette.Rmd) 
    Error: processing vignette 'lplyr-vignette.Rmd' failed with diagnostics:
    select.list() cannot be used non-interactively
    Execution halted
    ```

# mapfuser

Version: 0.1.2

## In both

*   checking package dependencies ... ERROR
    ```
    Package required but not available: ‘LPmerge’
    
    See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
    manual.
    ```

# markmyassignment

Version: 0.6.1

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘lazyeval’
      All declared Imports should be used.
    ```

# mason

Version: 0.2.5

## In both

*   checking Rd cross-references ... NOTE
    ```
    Packages unavailable to check Rd xrefs: ‘ggplot2’, ‘pander’, ‘pixiedust’
    ```

# metagenomeFeatures

Version: 1.8.1

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  8.7Mb
      sub-directories of 1Mb or more:
        extdata   6.7Mb
    ```

*   checking R code for possible problems ... NOTE
    ```
    .mgDb_annotateFeatures: no visible binding for global variable
      ‘db_keys’
    .select.taxa: no visible binding for global variable ‘Keys’
    .select.taxa: no visible binding for global variable ‘.’
    aggregate_taxa: no visible binding for global variable ‘.’
    aggregate_taxa: no visible binding for global variable ‘index’
    vignette_pheno_data: no visible global function definition for
      ‘read.csv’
    Undefined global functions or variables:
      . Keys db_keys index read.csv
    Consider adding
      importFrom("utils", "read.csv")
    to your NAMESPACE file.
    ```

# modelr

Version: 0.1.1

## In both

*   checking Rd cross-references ... NOTE
    ```
    Packages unavailable to check Rd xrefs: ‘lme4’, ‘rstanarm’
    ```

# mosaic

Version: 1.1.0

## In both

*   checking package dependencies ... NOTE
    ```
    Package which this enhances but not available for checking: ‘manipulate’
    ```

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘cubature’
    ```

# mosaicModel

Version: 0.3.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘MASS’ ‘caret’ ‘ggformula’ ‘knitr’ ‘testthat’ ‘tidyverse’
      All declared Imports should be used.
    ```

# mrgsolve

Version: 0.8.9

## In both

*   checking whether package ‘mrgsolve’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/Users/lionel/Dropbox/Projects/R/hadley/lazyeval/revdep/checks/mrgsolve/new/mrgsolve.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘mrgsolve’ ...
** package ‘mrgsolve’ successfully unpacked and MD5 sums checked
** libs
ccache clang++ -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG -I../inst/include -I"/Users/lionel/Dropbox/Projects/R/hadley/lazyeval/revdep/library/mrgsolve/Rcpp/include" -I"/Users/lionel/Dropbox/Projects/R/hadley/lazyeval/revdep/library/mrgsolve/RcppArmadillo/include" -I"/Users/lionel/Dropbox/Projects/R/hadley/lazyeval/revdep/library/mrgsolve/BH/include" -I/usr/local/include   -fPIC  -arch x86_64  -ftemplate-depth-256  -Wall  -pedantic  -O0 -c RcppExports.cpp -o RcppExports.o
ccache clang++ -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG -I../inst/include -I"/Users/lionel/Dropbox/Projects/R/hadley/lazyeval/revdep/library/mrgsolve/Rcpp/include" -I"/Users/lionel/Dropbox/Projects/R/hadley/lazyeval/revdep/library/mrgsolve/RcppArmadillo/include" -I"/Users/lionel/Dropbox/Projects/R/hadley/lazyeval/revdep/library/mrgsolve/BH/include" -I/usr/local/include   -fPIC  -arch x86_64  -ftemplate-depth-256  -Wall  -pedantic  -O0 -c dataobject.cpp -o dataobject.o
ccache clang++ -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG -I../inst/include -I"/Users/lionel/Dropbox/Projects/R/hadley/lazyeval/revdep/library/mrgsolve/Rcpp/include" -I"/Users/lionel/Dropbox/Projects/R/hadley/lazyeval/revdep/library/mrgsolve/RcppArmadillo/include" -I"/Users/lionel/Dropbox/Projects/R/hadley/lazyeval/revdep/library/mrgsolve/BH/include" -I/usr/local/include   -fPIC  -arch x86_64  -ftemplate-depth-256  -Wall  -pedantic  -O0 -c datarecord.cpp -o datarecord.o
ccache clang++ -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG -I../inst/include -I"/Users/lionel/Dropbox/Projects/R/hadley/lazyeval/revdep/library/mrgsolve/Rcpp/include" -I"/Users/lionel/Dropbox/Projects/R/hadley/lazyeval/revdep/library/mrgsolve/RcppArmadillo/include" -I"/Users/lionel/Dropbox/Projects/R/hadley/lazyeval/revdep/library/mrgsolve/BH/include" -I/usr/local/include   -fPIC  -arch x86_64  -ftemplate-depth-256  -Wall  -pedantic  -O0 -c devtran.cpp -o devtran.o
ccache clang++ -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG -I../inst/include -I"/Users/lionel/Dropbox/Projects/R/hadley/lazyeval/revdep/library/mrgsolve/Rcpp/include" -I"/Users/lionel/Dropbox/Projects/R/hadley/lazyeval/revdep/library/mrgsolve/RcppArmadillo/include" -I"/Users/lionel/Dropbox/Projects/R/hadley/lazyeval/revdep/library/mrgsolve/BH/include" -I/usr/local/include   -fPIC  -arch x86_64  -ftemplate-depth-256  -Wall  -pedantic  -O0 -c housemodel-mread-source.cpp -o housemodel-mread-source.o
ccache clang++ -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG -I../inst/include -I"/Users/lionel/Dropbox/Projects/R/hadley/lazyeval/revdep/library/mrgsolve/Rcpp/include" -I"/Users/lionel/Dropbox/Projects/R/hadley/lazyeval/revdep/library/mrgsolve/RcppArmadillo/include" -I"/Users/lionel/Dropbox/Projects/R/hadley/lazyeval/revdep/library/mrgsolve/BH/include" -I/usr/local/include   -fPIC  -arch x86_64  -ftemplate-depth-256  -Wall  -pedantic  -O0 -c mrgsolve.cpp -o mrgsolve.o
ccache clang++ -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG -I../inst/include -I"/Users/lionel/Dropbox/Projects/R/hadley/lazyeval/revdep/library/mrgsolve/Rcpp/include" -I"/Users/lionel/Dropbox/Projects/R/hadley/lazyeval/revdep/library/mrgsolve/RcppArmadillo/include" -I"/Users/lionel/Dropbox/Projects/R/hadley/lazyeval/revdep/library/mrgsolve/BH/include" -I/usr/local/include   -fPIC  -arch x86_64  -ftemplate-depth-256  -Wall  -pedantic  -O0 -c mrgsolve_init.cpp -o mrgsolve_init.o
ccache clang++ -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG -I../inst/include -I"/Users/lionel/Dropbox/Projects/R/hadley/lazyeval/revdep/library/mrgsolve/Rcpp/include" -I"/Users/lionel/Dropbox/Projects/R/hadley/lazyeval/revdep/library/mrgsolve/RcppArmadillo/include" -I"/Users/lionel/Dropbox/Projects/R/hadley/lazyeval/revdep/library/mrgsolve/BH/include" -I/usr/local/include   -fPIC  -arch x86_64  -ftemplate-depth-256  -Wall  -pedantic  -O0 -c odepack_dlsoda.cpp -o odepack_dlsoda.o
ccache clang++ -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG -I../inst/include -I"/Users/lionel/Dropbox/Projects/R/hadley/lazyeval/revdep/library/mrgsolve/Rcpp/include" -I"/Users/lionel/Dropbox/Projects/R/hadley/lazyeval/revdep/library/mrgsolve/RcppArmadillo/include" -I"/Users/lionel/Dropbox/Projects/R/hadley/lazyeval/revdep/library/mrgsolve/BH/include" -I/usr/local/include   -fPIC  -arch x86_64  -ftemplate-depth-256  -Wall  -pedantic  -O0 -c odeproblem.cpp -o odeproblem.o
gfortran   -fPIC  -g -O2  -c opk_dlsoda_mrg.f -o opk_dlsoda_mrg.o
gfortran   -fPIC  -g -O2  -c opkda1_mrg.f -o opkda1_mrg.o
gfortran   -fPIC  -g -O2  -c opkda2_mrg.f -o opkda2_mrg.o
ccache clang++ -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG -I../inst/include -I"/Users/lionel/Dropbox/Projects/R/hadley/lazyeval/revdep/library/mrgsolve/Rcpp/include" -I"/Users/lionel/Dropbox/Projects/R/hadley/lazyeval/revdep/library/mrgsolve/RcppArmadillo/include" -I"/Users/lionel/Dropbox/Projects/R/hadley/lazyeval/revdep/library/mrgsolve/BH/include" -I/usr/local/include   -fPIC  -arch x86_64  -ftemplate-depth-256  -Wall  -pedantic  -O0 -c quick.cpp -o quick.o
ccache clang++ -dynamiclib -Wl,-headerpad_max_install_names -undefined dynamic_lookup -single_module -multiply_defined suppress -L/Library/Frameworks/R.framework/Resources/lib -L/usr/local/lib -o mrgsolve.so RcppExports.o dataobject.o datarecord.o devtran.o housemodel-mread-source.o mrgsolve.o mrgsolve_init.o odepack_dlsoda.o odeproblem.o opk_dlsoda_mrg.o opkda1_mrg.o opkda2_mrg.o quick.o -L/Library/Frameworks/R.framework/Resources/lib -lRlapack -L/Library/Frameworks/R.framework/Resources/lib -lRblas -L/usr/local/gfortran/lib/gcc/x86_64-apple-darwin15/6.1.0 -L/usr/local/gfortran/lib -lgfortran -lquadmath -lm -L/usr/local/gfortran/lib/gcc/x86_64-apple-darwin15/6.1.0 -L/usr/local/gfortran/lib -lgfortran -lquadmath -lm -F/Library/Frameworks/R.framework/.. -framework R -Wl,-framework -Wl,CoreFoundation
ld: warning: directory not found for option '-L/usr/local/gfortran/lib/gcc/x86_64-apple-darwin15/6.1.0'
ld: warning: directory not found for option '-L/usr/local/gfortran/lib'
ld: warning: directory not found for option '-L/usr/local/gfortran/lib/gcc/x86_64-apple-darwin15/6.1.0'
ld: warning: directory not found for option '-L/usr/local/gfortran/lib'
ld: library not found for -lquadmath
clang: error: linker command failed with exit code 1 (use -v to see invocation)
make: *** [mrgsolve.so] Error 1
ERROR: compilation failed for package ‘mrgsolve’
* removing ‘/Users/lionel/Dropbox/Projects/R/hadley/lazyeval/revdep/checks/mrgsolve/new/mrgsolve.Rcheck/mrgsolve’

```
### CRAN

```
* installing *source* package ‘mrgsolve’ ...
** package ‘mrgsolve’ successfully unpacked and MD5 sums checked
** libs
ccache clang++ -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG -I../inst/include -I"/Users/lionel/Dropbox/Projects/R/hadley/lazyeval/revdep/library/mrgsolve/Rcpp/include" -I"/Users/lionel/Dropbox/Projects/R/hadley/lazyeval/revdep/library/mrgsolve/RcppArmadillo/include" -I"/Users/lionel/Dropbox/Projects/R/hadley/lazyeval/revdep/library/mrgsolve/BH/include" -I/usr/local/include   -fPIC  -arch x86_64  -ftemplate-depth-256  -Wall  -pedantic  -O0 -c RcppExports.cpp -o RcppExports.o
ccache clang++ -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG -I../inst/include -I"/Users/lionel/Dropbox/Projects/R/hadley/lazyeval/revdep/library/mrgsolve/Rcpp/include" -I"/Users/lionel/Dropbox/Projects/R/hadley/lazyeval/revdep/library/mrgsolve/RcppArmadillo/include" -I"/Users/lionel/Dropbox/Projects/R/hadley/lazyeval/revdep/library/mrgsolve/BH/include" -I/usr/local/include   -fPIC  -arch x86_64  -ftemplate-depth-256  -Wall  -pedantic  -O0 -c dataobject.cpp -o dataobject.o
ccache clang++ -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG -I../inst/include -I"/Users/lionel/Dropbox/Projects/R/hadley/lazyeval/revdep/library/mrgsolve/Rcpp/include" -I"/Users/lionel/Dropbox/Projects/R/hadley/lazyeval/revdep/library/mrgsolve/RcppArmadillo/include" -I"/Users/lionel/Dropbox/Projects/R/hadley/lazyeval/revdep/library/mrgsolve/BH/include" -I/usr/local/include   -fPIC  -arch x86_64  -ftemplate-depth-256  -Wall  -pedantic  -O0 -c datarecord.cpp -o datarecord.o
ccache clang++ -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG -I../inst/include -I"/Users/lionel/Dropbox/Projects/R/hadley/lazyeval/revdep/library/mrgsolve/Rcpp/include" -I"/Users/lionel/Dropbox/Projects/R/hadley/lazyeval/revdep/library/mrgsolve/RcppArmadillo/include" -I"/Users/lionel/Dropbox/Projects/R/hadley/lazyeval/revdep/library/mrgsolve/BH/include" -I/usr/local/include   -fPIC  -arch x86_64  -ftemplate-depth-256  -Wall  -pedantic  -O0 -c devtran.cpp -o devtran.o
ccache clang++ -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG -I../inst/include -I"/Users/lionel/Dropbox/Projects/R/hadley/lazyeval/revdep/library/mrgsolve/Rcpp/include" -I"/Users/lionel/Dropbox/Projects/R/hadley/lazyeval/revdep/library/mrgsolve/RcppArmadillo/include" -I"/Users/lionel/Dropbox/Projects/R/hadley/lazyeval/revdep/library/mrgsolve/BH/include" -I/usr/local/include   -fPIC  -arch x86_64  -ftemplate-depth-256  -Wall  -pedantic  -O0 -c housemodel-mread-source.cpp -o housemodel-mread-source.o
ccache clang++ -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG -I../inst/include -I"/Users/lionel/Dropbox/Projects/R/hadley/lazyeval/revdep/library/mrgsolve/Rcpp/include" -I"/Users/lionel/Dropbox/Projects/R/hadley/lazyeval/revdep/library/mrgsolve/RcppArmadillo/include" -I"/Users/lionel/Dropbox/Projects/R/hadley/lazyeval/revdep/library/mrgsolve/BH/include" -I/usr/local/include   -fPIC  -arch x86_64  -ftemplate-depth-256  -Wall  -pedantic  -O0 -c mrgsolve.cpp -o mrgsolve.o
ccache clang++ -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG -I../inst/include -I"/Users/lionel/Dropbox/Projects/R/hadley/lazyeval/revdep/library/mrgsolve/Rcpp/include" -I"/Users/lionel/Dropbox/Projects/R/hadley/lazyeval/revdep/library/mrgsolve/RcppArmadillo/include" -I"/Users/lionel/Dropbox/Projects/R/hadley/lazyeval/revdep/library/mrgsolve/BH/include" -I/usr/local/include   -fPIC  -arch x86_64  -ftemplate-depth-256  -Wall  -pedantic  -O0 -c mrgsolve_init.cpp -o mrgsolve_init.o
ccache clang++ -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG -I../inst/include -I"/Users/lionel/Dropbox/Projects/R/hadley/lazyeval/revdep/library/mrgsolve/Rcpp/include" -I"/Users/lionel/Dropbox/Projects/R/hadley/lazyeval/revdep/library/mrgsolve/RcppArmadillo/include" -I"/Users/lionel/Dropbox/Projects/R/hadley/lazyeval/revdep/library/mrgsolve/BH/include" -I/usr/local/include   -fPIC  -arch x86_64  -ftemplate-depth-256  -Wall  -pedantic  -O0 -c odepack_dlsoda.cpp -o odepack_dlsoda.o
ccache clang++ -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG -I../inst/include -I"/Users/lionel/Dropbox/Projects/R/hadley/lazyeval/revdep/library/mrgsolve/Rcpp/include" -I"/Users/lionel/Dropbox/Projects/R/hadley/lazyeval/revdep/library/mrgsolve/RcppArmadillo/include" -I"/Users/lionel/Dropbox/Projects/R/hadley/lazyeval/revdep/library/mrgsolve/BH/include" -I/usr/local/include   -fPIC  -arch x86_64  -ftemplate-depth-256  -Wall  -pedantic  -O0 -c odeproblem.cpp -o odeproblem.o
gfortran   -fPIC  -g -O2  -c opk_dlsoda_mrg.f -o opk_dlsoda_mrg.o
gfortran   -fPIC  -g -O2  -c opkda1_mrg.f -o opkda1_mrg.o
gfortran   -fPIC  -g -O2  -c opkda2_mrg.f -o opkda2_mrg.o
ccache clang++ -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG -I../inst/include -I"/Users/lionel/Dropbox/Projects/R/hadley/lazyeval/revdep/library/mrgsolve/Rcpp/include" -I"/Users/lionel/Dropbox/Projects/R/hadley/lazyeval/revdep/library/mrgsolve/RcppArmadillo/include" -I"/Users/lionel/Dropbox/Projects/R/hadley/lazyeval/revdep/library/mrgsolve/BH/include" -I/usr/local/include   -fPIC  -arch x86_64  -ftemplate-depth-256  -Wall  -pedantic  -O0 -c quick.cpp -o quick.o
ccache clang++ -dynamiclib -Wl,-headerpad_max_install_names -undefined dynamic_lookup -single_module -multiply_defined suppress -L/Library/Frameworks/R.framework/Resources/lib -L/usr/local/lib -o mrgsolve.so RcppExports.o dataobject.o datarecord.o devtran.o housemodel-mread-source.o mrgsolve.o mrgsolve_init.o odepack_dlsoda.o odeproblem.o opk_dlsoda_mrg.o opkda1_mrg.o opkda2_mrg.o quick.o -L/Library/Frameworks/R.framework/Resources/lib -lRlapack -L/Library/Frameworks/R.framework/Resources/lib -lRblas -L/usr/local/gfortran/lib/gcc/x86_64-apple-darwin15/6.1.0 -L/usr/local/gfortran/lib -lgfortran -lquadmath -lm -L/usr/local/gfortran/lib/gcc/x86_64-apple-darwin15/6.1.0 -L/usr/local/gfortran/lib -lgfortran -lquadmath -lm -F/Library/Frameworks/R.framework/.. -framework R -Wl,-framework -Wl,CoreFoundation
ld: warning: directory not found for option '-L/usr/local/gfortran/lib/gcc/x86_64-apple-darwin15/6.1.0'
ld: warning: directory not found for option '-L/usr/local/gfortran/lib'
ld: warning: directory not found for option '-L/usr/local/gfortran/lib/gcc/x86_64-apple-darwin15/6.1.0'
ld: warning: directory not found for option '-L/usr/local/gfortran/lib'
ld: library not found for -lquadmath
clang: error: linker command failed with exit code 1 (use -v to see invocation)
make: *** [mrgsolve.so] Error 1
ERROR: compilation failed for package ‘mrgsolve’
* removing ‘/Users/lionel/Dropbox/Projects/R/hadley/lazyeval/revdep/checks/mrgsolve/old/mrgsolve.Rcheck/mrgsolve’

```
# nonmemica

Version: 0.7.6

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Warning in engine$weave(file, quiet = quiet, encoding = enc) :
      The vignette engine knitr::rmarkdown is not available, because the rmarkdown package is not installed. Please install it.
    Unable to find any JVMs matching version "(null)".
    No Java runtime present, try --request to install.
    Quitting from lines 197-201 (parameter-table.Rmd) 
    Error: processing vignette 'parameter-table.Rmd' failed with diagnostics:
    package 'ReporteRsjars' could not be loaded
    Execution halted
    ```

*   checking dependencies in R code ... NOTE
    ```
    Unable to find any JVMs matching version "(null)".
    No Java runtime present, try --request to install.
    ```

# observer

Version: 0.1.2

## In both

*   checking Rd cross-references ... NOTE
    ```
    Packages unavailable to check Rd xrefs: ‘ensurer’, ‘validate’
    ```

# openair

Version: 2.1-5

## In both

*   checking whether package ‘openair’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/Users/lionel/Dropbox/Projects/R/hadley/lazyeval/revdep/checks/openair/new/openair.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘openair’ ...
** package ‘openair’ successfully unpacked and MD5 sums checked
** libs
ccache clang++ -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG  -I"/Users/lionel/Dropbox/Projects/R/hadley/lazyeval/revdep/library/openair/Rcpp/include" -I/usr/local/include   -fPIC  -arch x86_64  -ftemplate-depth-256  -Wall  -pedantic  -O0 -c cluster.cpp -o cluster.o
clang -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG  -I"/Users/lionel/Dropbox/Projects/R/hadley/lazyeval/revdep/library/openair/Rcpp/include" -I/usr/local/include   -fPIC  -Wall  -pedantic -O0 -c init.c -o init.o
ccache clang++ -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG  -I"/Users/lionel/Dropbox/Projects/R/hadley/lazyeval/revdep/library/openair/Rcpp/include" -I/usr/local/include   -fPIC  -arch x86_64  -ftemplate-depth-256  -Wall  -pedantic  -O0 -c rolling.cpp -o rolling.o
ccache clang++ -dynamiclib -Wl,-headerpad_max_install_names -undefined dynamic_lookup -single_module -multiply_defined suppress -L/Library/Frameworks/R.framework/Resources/lib -L/usr/local/lib -o openair.so cluster.o init.o rolling.o -L/Library/Frameworks/R.framework/Resources/lib -lRlapack -L/Library/Frameworks/R.framework/Resources/lib -lRblas -L/usr/local/gfortran/lib/gcc/x86_64-apple-darwin15/6.1.0 -L/usr/local/gfortran/lib -lgfortran -lquadmath -lm -F/Library/Frameworks/R.framework/.. -framework R -Wl,-framework -Wl,CoreFoundation
ld: warning: directory not found for option '-L/usr/local/gfortran/lib/gcc/x86_64-apple-darwin15/6.1.0'
ld: warning: directory not found for option '-L/usr/local/gfortran/lib'
ld: library not found for -lquadmath
clang: error: linker command failed with exit code 1 (use -v to see invocation)
make: *** [openair.so] Error 1
ERROR: compilation failed for package ‘openair’
* removing ‘/Users/lionel/Dropbox/Projects/R/hadley/lazyeval/revdep/checks/openair/new/openair.Rcheck/openair’

```
### CRAN

```
* installing *source* package ‘openair’ ...
** package ‘openair’ successfully unpacked and MD5 sums checked
** libs
ccache clang++ -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG  -I"/Users/lionel/Dropbox/Projects/R/hadley/lazyeval/revdep/library/openair/Rcpp/include" -I/usr/local/include   -fPIC  -arch x86_64  -ftemplate-depth-256  -Wall  -pedantic  -O0 -c cluster.cpp -o cluster.o
clang -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG  -I"/Users/lionel/Dropbox/Projects/R/hadley/lazyeval/revdep/library/openair/Rcpp/include" -I/usr/local/include   -fPIC  -Wall  -pedantic -O0 -c init.c -o init.o
ccache clang++ -I/Library/Frameworks/R.framework/Resources/include -DNDEBUG  -I"/Users/lionel/Dropbox/Projects/R/hadley/lazyeval/revdep/library/openair/Rcpp/include" -I/usr/local/include   -fPIC  -arch x86_64  -ftemplate-depth-256  -Wall  -pedantic  -O0 -c rolling.cpp -o rolling.o
ccache clang++ -dynamiclib -Wl,-headerpad_max_install_names -undefined dynamic_lookup -single_module -multiply_defined suppress -L/Library/Frameworks/R.framework/Resources/lib -L/usr/local/lib -o openair.so cluster.o init.o rolling.o -L/Library/Frameworks/R.framework/Resources/lib -lRlapack -L/Library/Frameworks/R.framework/Resources/lib -lRblas -L/usr/local/gfortran/lib/gcc/x86_64-apple-darwin15/6.1.0 -L/usr/local/gfortran/lib -lgfortran -lquadmath -lm -F/Library/Frameworks/R.framework/.. -framework R -Wl,-framework -Wl,CoreFoundation
ld: warning: directory not found for option '-L/usr/local/gfortran/lib/gcc/x86_64-apple-darwin15/6.1.0'
ld: warning: directory not found for option '-L/usr/local/gfortran/lib'
ld: library not found for -lquadmath
clang: error: linker command failed with exit code 1 (use -v to see invocation)
make: *** [openair.so] Error 1
ERROR: compilation failed for package ‘openair’
* removing ‘/Users/lionel/Dropbox/Projects/R/hadley/lazyeval/revdep/checks/openair/old/openair.Rcheck/openair’

```
# parsemsf

Version: 0.1.0

## In both

*   checking examples ... ERROR
    ```
    Running examples in ‘parsemsf-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: make_area_table
    > ### Title: Make a table of peptide areas
    > ### Aliases: make_area_table
    > 
    > ### ** Examples
    > 
    > make_area_table(parsemsf_example("test_db.msf"))
    Error: The dbplyr package is required to communicate with database backends.
    Execution halted
    ```

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      10: src_sqlite(msf_file)
      11: check_dbplyr()
      12: check_pkg("dbplyr", "communicate with database backends", install = FALSE)
      13: glubort(NULL, "The {name} package is required to {reason}.", if (install) "\nPlease install it with `install.packages(\"{name}\")`")
      14: .abort(text)
      
      Error: The dbplyr package is required to communicate with database backends.
      testthat results ================================================================
      OK: 0 SKIPPED: 0 FAILED: 3
      1. Error: make_area_table creates a data frame with the correct column names (@test_make_area_table.R#16) 
      2. Error: make_pep_table creates a data frame with the correct column names (@test_make_pep_table.R#13) 
      3. Error: map_peptides creates a data frame with the correct column names (@test_map_peptides.R#16) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Quitting from lines 20-25 (introduction.Rmd) 
    Error: processing vignette 'introduction.Rmd' failed with diagnostics:
    The dbplyr package is required to communicate with database backends.
    Execution halted
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘RSQLite’
      All declared Imports should be used.
    ```

# PKPDmisc

Version: 2.0.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘purrr’
      All declared Imports should be used.
    ```

# purrrlyr

Version: 0.0.2

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘lazyeval’
      All declared Imports should be used.
    ```

# R6Frame

Version: 0.1.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      testthat results ================================================================
      OK: 139 SKIPPED: 0 FAILED: 10
      1.  Error: gather works with R6 data.frame (@test-tidyr_reshape.R#11) 
      2.  Error: gather works with R6 data.table (@test-tidyr_reshape.R#25) 
      3.  Error: gather works with R6 tbl_df (@test-tidyr_reshape.R#38) 
      4.  Error: spread works with R6 data.frame (@test-tidyr_reshape.R#52) 
      5.  Error: spread works with R6 data.table (@test-tidyr_reshape.R#67) 
      6.  Error: spread works with R6 tbl_df (@test-tidyr_reshape.R#81) 
      7.  Error: complete works with R6 data.frame (@test-tidyr_verbs.R#13) 
      8.  Error: complete works with R6 data.table (@test-tidyr_verbs.R#27) 
      9.  Error: complete works with R6 tbl_df (@test-tidyr_verbs.R#41) 
      10. Error: fill works with R6 tbl_df (@test-tidyr_verbs.R#72) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

# rbokeh

Version: 0.5.0

## In both

*   checking package dependencies ... NOTE
    ```
    Package which this enhances but not available for checking: ‘shiny’
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘ggplot2’
      All declared Imports should be used.
    ```

# rfishbase

Version: 2.1.2

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 44 marked UTF-8 strings
    ```

# rgho

Version: 1.0.1

## In both

*   checking examples ... ERROR
    ```
    Running examples in ‘rgho-Ex.R’ failed
    The error most likely occurred in:
    
    > ### Name: get_gho_data
    > ### Title: Returns GHO Data
    > ### Aliases: get_gho_data
    > 
    > ### ** Examples
    > 
    > 
    > result <- get_gho_data(
    +   dimension = "GHO",
    +   code = "MDG_0000000001"
    + )
    Error: parse error: premature EOF
                                           { "copyright": "(c) World Healt
                         (right here) ------^
    Execution halted
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Quitting from lines 36-38 (a-intro.Rmd) 
    Error: processing vignette 'a-intro.Rmd' failed with diagnostics:
    parse error: premature EOF
                                           { "copyright": "(c) World Healt
                         (right here) ------^
    Execution halted
    ```

# RNeXML

Version: 2.0.7

## In both

*   checking package dependencies ... NOTE
    ```
    Packages suggested but not available for checking: ‘rrdf’ ‘Sxslt’
    ```

# ropenaq

Version: 0.2.2

## In both

*   R CMD check timed out
    

# rPref

Version: 1.2

## In both

*   checking for GNU extensions in Makefiles ... NOTE
    ```
    GNU make is a SystemRequirements.
    ```

# rscorecard

Version: 0.4.0

## In both

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Quitting from lines 22-29 (introduction.Rmd) 
    Error: processing vignette 'introduction.Rmd' failed with diagnostics:
    Missing API key; ?sc_key for details
    Execution halted
    ```

# rtimicropem

Version: 1.3

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘R6’
      All declared Imports should be used.
    ```

# sf

Version: 0.5-4

## In both

*   checking whether package ‘sf’ can be installed ... ERROR
    ```
    Installation failed.
    See ‘/Users/lionel/Dropbox/Projects/R/hadley/lazyeval/revdep/checks/sf/new/sf.Rcheck/00install.out’ for details.
    ```

## Installation

### Devel

```
* installing *source* package ‘sf’ ...
** package ‘sf’ successfully unpacked and MD5 sums checked
configure: CC: clang
configure: CXX: ccache clang++
checking for gdal-config... no
no
configure: error: gdal-config not found or not executable.
ERROR: configuration failed for package ‘sf’
* removing ‘/Users/lionel/Dropbox/Projects/R/hadley/lazyeval/revdep/checks/sf/new/sf.Rcheck/sf’

```
### CRAN

```
* installing *source* package ‘sf’ ...
** package ‘sf’ successfully unpacked and MD5 sums checked
configure: CC: clang
configure: CXX: ccache clang++
checking for gdal-config... no
no
configure: error: gdal-config not found or not executable.
ERROR: configuration failed for package ‘sf’
* removing ‘/Users/lionel/Dropbox/Projects/R/hadley/lazyeval/revdep/checks/sf/old/sf.Rcheck/sf’

```
# shazam

Version: 0.1.8

## In both

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 2 marked UTF-8 strings
    ```

# SpaDES.core

Version: 0.1.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/test-all.R’ failed.
    Last 13 lines of output:
      100 43558  100 43558    0     0   457k      0 --:--:-- --:--:-- --:--:--  457k
      1. Error: spelling errors (@test-spelling.R#19) --------------------------------
      No suitable spell-checker program found
      1: aspell_package_vignettes(pkgDir) at testthat/test-spelling.R:19
      2: aspell(character())
      3: stop("No suitable spell-checker program found")
      
      testthat results ================================================================
      OK: 304 SKIPPED: 2 FAILED: 1
      1. Error: spelling errors (@test-spelling.R#19) 
      
      Error: testthat unit tests failed
      In addition: Warning message:
      In fun(libname, pkgname) : couldn't connect to display ""
      Execution halted
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘CircStats’ ‘RandomFields’ ‘grDevices’ ‘sp’
      All declared Imports should be used.
    ```

# sparklyr

Version: 0.6.3

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      > library(testthat)
      > library(sparklyr)
      > 
      > if (identical(Sys.getenv("NOT_CRAN"), "true")) {
      +   test_check("sparklyr")
      +   on.exit({ spark_disconnect_all() ; livy_service_stop() })
      + }
      Error in validate_java_version_line(master, version) : 
        Java version detected but couldn't parse version from No Java runtime present, requesting install.
      Calls: test_check ... validate_java_version -> validate_java_version_line
      In addition: Warning message:
      running command ''/usr/bin/java' -version 2>&1' had status 1 
      testthat results ================================================================
      OK: 0 SKIPPED: 0 FAILED: 0
      Execution halted
    ```

# statisticalModeling

Version: 0.3.0

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > library(testthat)
      > library(statisticalModeling)
      Loading required package: ggplot2
      > 
      > test_check("statisticalModeling")
      Error: gwm() has been removed from `mosaic'.  
          It will be replaced by better tools in `mosaicModel'.
      testthat results ================================================================
      OK: 21 SKIPPED: 0 FAILED: 0
      Execution halted
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    Error in re-building vignettes:
      ...
    Quitting from lines 303-306 (modeling.Rmd) 
    Error: processing vignette 'modeling.Rmd' failed with diagnostics:
    Invalid formula type for gf_point.
    Execution halted
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘magrittr’ ‘rpart’
      All declared Imports should be used.
    ```

# sweep

Version: 0.2.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘devtools’ ‘lazyeval’ ‘lubridate’ ‘tidyr’
      All declared Imports should be used.
    ```

# tadaatoolbox

Version: 0.13.0

## In both

*   checking Rd cross-references ... NOTE
    ```
    Package unavailable to check Rd xrefs: ‘rmdformats’
    ```

*   checking data for non-ASCII characters ... NOTE
    ```
      Note: found 3 marked UTF-8 strings
    ```

# taxa

Version: 0.1.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘knitr’ ‘lazyeval’ ‘rlang’
      All declared Imports should be used.
    ```

# tbl2xts

Version: 0.1.2

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘PerformanceAnalytics’
      All declared Imports should be used.
    ```

# tidyquant

Version: 0.5.3

## In both

*   checking tests ...
    ```
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 13 lines of output:
      
      testthat results ================================================================
      OK: 191 SKIPPED: 0 FAILED: 9
      1. Failure: Test all stock.index options to ensure no issues during fetch. (@test_tq_index.R#22) 
      2. Failure: Test all stock.index options to ensure no issues during fetch. (@test_tq_index.R#22) 
      3. Failure: Test all stock.index options to ensure no issues during fetch. (@test_tq_index.R#22) 
      4. Failure: Test all stock.index options to ensure no issues during fetch. (@test_tq_index.R#22) 
      5. Failure: Test all stock.index options to ensure no issues during fetch. (@test_tq_index.R#22) 
      6. Failure: Test all stock.index options to ensure no issues during fetch. (@test_tq_index.R#22) 
      7. Failure: Test all stock.index options to ensure no issues during fetch. (@test_tq_index.R#22) 
      8. Failure: Test all stock.index options to ensure no issues during fetch. (@test_tq_index.R#22) 
      9. Failure: Test all stock.index options to ensure no issues during fetch. (@test_tq_index.R#22) 
      
      Error: testthat unit tests failed
      Execution halted
    ```

*   checking re-building of vignette outputs ... WARNING
    ```
    ...
      Reason: image not found
    
    Getting data...
    
    Getting holdings for DOW
    Unable to find any JVMs matching version "(null)".
    No Java runtime present, try --request to install.
    Warning: running command '/usr/libexec/java_home' had status 1
    Warning in tq_index("DOW") :
      Error at DOW during download. 
    Error: .onLoad failed in loadNamespace() for 'rJava', details:
      call: dyn.load(file, DLLpath = DLLpath, ...)
      error: unable to load shared object '/Users/lionel/Dropbox/Projects/R/hadley/lazyeval/revdep/library/tidyquant/rJava/libs/rJava.so':
      dlopen(/Users/lionel/Dropbox/Projects/R/hadley/lazyeval/revdep/library/tidyquant/rJava/libs/rJava.so, 6): Library not loaded: @rpath/libjvm.dylib
      Referenced from: /Users/lionel/Dropbox/Projects/R/hadley/lazyeval/revdep/library/tidyquant/rJava/libs/rJava.so
      Reason: image not found
    
    Quitting from lines 105-108 (TQ03-scaling-and-modeling-with-tidyquant.Rmd) 
    Error: processing vignette 'TQ03-scaling-and-modeling-with-tidyquant.Rmd' failed with diagnostics:
    subscript out of bounds
    Execution halted
    ```

*   checking dependencies in R code ... NOTE
    ```
    Unable to find any JVMs matching version "(null)".
    No Java runtime present, try --request to install.
    Namespaces in Imports field not imported from:
      ‘broom’ ‘curl’ ‘devtools’ ‘rvest’ ‘timeSeries’ ‘tseries’ ‘zoo’
      All declared Imports should be used.
    ```

# timetk

Version: 0.1.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘devtools’ ‘forecast’
      All declared Imports should be used.
    ```

# valaddin

Version: 0.1.2

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘purrr’
      All declared Imports should be used.
    ```

# vqtl

Version: 1.2.0

## In both

*   checking dependencies in R code ... NOTE
    ```
    Namespaces in Imports field not imported from:
      ‘iterators’ ‘knitr’ ‘testthat’
      All declared Imports should be used.
    ```

