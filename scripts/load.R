# Load data

# RAD: read.csv() (or read.csv2()) is the simplest and in some ways best approach
# RAD: Take a look at the example data file, notice the extra, descriptive, header row, which is skipped below

dat <- read.csv('../data/ethanol_emis.csv', skip = 1)

# RAD: read_xlsx() etc. from the readxl package is handy for Excel files
# RAD: But I turn the resulting object into an old-school data frame because I am not a fan of the changes in behavior that comes with "tibbles"
# dat <- as.data.frame(read_xlsx('../data/dat.xlsx', sheet = 1)
