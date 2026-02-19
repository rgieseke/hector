# Get all of the possible Hector output variables

This function returns all of the possible hector output variables that
can be accessed with
[`fetchvars`](https://jgcri.github.io/hector/reference/fetchvars.md).

## Usage

``` r
ALL_VARS()
```

## Value

Character vector of variable names.

## Examples

``` r
if (FALSE) { # \dontrun{
ini <- system.file(package = "hector", "input/hector_ssp245.ini")
hc <- newcore(ini)
run(hc)
out <- fetchvars(core = hc, dates = 1900:2100, vars = ALL_VARS())
print(out)
} # }
```
