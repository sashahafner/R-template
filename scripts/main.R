# Main script for data analysis
# RAD: Note that "RAD" means "read and delete", it precedes notes meant to be first read and then deleted by you, the user
# RAD: Call all scripts through this main script, so the complete analysis can be run by running main.R
# RAD: If necessary (if not automatically done), set the working directory to the location of this script before running

# RAD: Good practice to clear your workspace here, to avoid code that inadvertently requires some object created in an earlier version of your code
# RAD: Particularly helpful for when you are no paying attention to a "stealth" loading of some .Rdata file! (But do try to avoid this.)
rm(list = ls())

# RAD: See individual scripts listed below for more info
source('packages.R')
source('functions.R')
source('load.R')
source('clean.R')
# RAD: Using an RMarkdown file for the analysis is an easy way to get a record and view output from statistical models
render('analysis.Rmd', output_dir = '../logs')
# RAD: Or just use a regular script
#source('analysis.R')
source('summ.R')
source('export.R')
source('plot.R')
