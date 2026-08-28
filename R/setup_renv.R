# Run this ONCE, from R started in the project root, to create renv.lock.
#
#   1. install.packages("renv")   # if you don't have it
#   2. renv::init()               # creates renv/ + an initial renv.lock,
#                                 #   and a project-local library
#   3. # open and source R/analysis.R so the packages actually get installed
#      #   into the project library (readr, dplyr, ggplot2)
#   4. renv::snapshot()           # rewrites renv.lock with the EXACT versions
#                                 #   you actually used -> this is your deliverable
#
# To restore this environment on another machine:
#   renv::restore()               # reads renv.lock, installs matching versions
