# renv setup + workflow comparison (graduate addendum)

## Producing renv.lock
See `R/setup_renv.R`. In short, from R started in the project root:

```r
install.packages("renv")   # if needed
renv::init()               # creates renv/ and an initial renv.lock
source("R/analysis.R")     # triggers install of readr/dplyr/ggplot2 into the project
renv::snapshot()           # writes renv.lock with the EXACT versions used
```

`renv.lock` is the file you commit. Do NOT hand-edit it -- let `renv::snapshot()`
generate it so the hashes are correct. (That's why there's no pre-made renv.lock
in this scaffold: a fake one would fail `renv::restore()` and defeat the point.)

## Comparing conda/uv vs renv (draft -- rewrite in your own words)

> The addendum asks for 3-5 sentences. Here is an honest starting draft. Edit it
> so it reflects YOUR experience, or it won't read as genuine.

conda/uv and renv solve the same problem in similar ways but with different
ergonomics. renv is the smoother of the two for a pure-R project: `init` /
`snapshot` / `restore` is a tight loop, the lockfile pins exact versions plus
their source, and it stays scoped to the project automatically. conda is more
powerful because it manages non-Python system libraries and the interpreter
itself, but that power makes it more fragile -- solving an `environment.yml` can
be slow and can fail on channel conflicts, and exports differ across platforms.
uv is dramatically faster than conda and pleasant for pip-only Python stacks, but
it doesn't handle non-Python system dependencies the way conda does. For a real
project I'd choose [uv or conda] for Python and renv for R, and reach for Docker
whenever the environment includes system-level dependencies that a language-level
tool can't guarantee -- [give your own reason].
