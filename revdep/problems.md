# hyperSpec

<details>

* Version: 0.100.3
* GitHub: https://github.com/r-hyperspec/hyperSpec
* Source code: https://github.com/cran/hyperSpec
* Date/Publication: 2025-10-13 05:10:33 UTC
* Number of recursive dependencies: 133

Run `revdepcheck::cloud_details(, "hyperSpec")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘unittests.R’
    Running the tests in ‘tests/unittests.R’ failed.
    Complete output:
      > library (testthat)
      > test_check("hyperSpec")
      Loading required package: hyperSpec
      Loading required package: lattice
      Loading required package: grid
      Loading required package: ggplot2
      Loading required package: xml2
    ...
       5. └─fluNA[-2, , r]
       6.   └─hyperSpec (local) .local(x, i, j, ..., drop = drop)
       7.     └─hyperSpec:::.extract(x, i, j, l, wl.index = wl.index)
       8.       └─hyperSpec::wl2i(x, l)
       9.         └─hyperSpec:::.getindex(x, Re(to), extrapolate = FALSE)
      
      [ FAIL 1 | WARN 0 | SKIP 60 | PASS 323 ]
      Error:
      ! Test failures.
      Execution halted
    ```

# lidR

<details>

* Version: 4.2.3
* GitHub: https://github.com/r-lidar/lidR
* Source code: https://github.com/cran/lidR
* Date/Publication: 2026-01-08 09:10:02 UTC
* Number of recursive dependencies: 151

Run `revdepcheck::cloud_details(, "lidR")` for more info

</details>

## Newly broken

*   checking tests ... ERROR
    ```
      Running ‘testthat.R’
    Running the tests in ‘tests/testthat.R’ failed.
    Complete output:
      > Sys.setenv("R_TESTS" = "")
      > 
      > library(testthat)
      > library(lidR)
      > test_check("lidR")
      Tests using raster: terra 
      Tests using future: TRUE 
    ...
       4. │   │ └─base::withCallingHandlers(...)
       5. │   └─rlang::eval_bare(quo_get_expr(.quo), quo_get_env(.quo))
       6. ├─lidR::clip_circle(las, xc, yc, r)
       7. └─lidR:::clip_circle.LAS(las, xc, yc, r)
       8.   └─lidR:::assert_are_same_length(xcenter, radius)
      
      [ FAIL 1 | WARN 0 | SKIP 46 | PASS 1295 ]
      Error:
      ! Test failures.
      Execution halted
    ```

## In both

*   checking installed package size ... NOTE
    ```
      installed size is 19.8Mb
      sub-directories of 1Mb or more:
        R         1.5Mb
        doc       1.0Mb
        extdata   1.2Mb
        libs     15.4Mb
    ```

