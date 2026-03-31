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

