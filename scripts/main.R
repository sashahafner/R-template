# Main script for data analysis
# RAD: Call all scripts through this main script, so you can run the complete analysis by running main.R

# RAD: Good practice to clear your workspace here, to avoid code that inadvertently requires some object created in an earlier version of your code
rm(list = ls())

source('packages.R')
source('functions.R')
source('load.R')
source('clean.R')
source('analysis.R')
source('export.R')
source('plots.R')
