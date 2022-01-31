# Generate summary

# RAD: To help with code
# RAD: head(dat)

# RAD: There are many different options for getting a table of means etc.
# RAD: See below for one option using only base R functions
# RAD: summ ultimately has means, sd, and n for the response variable expressed in 2 different ways, by levels of the the variables that were manipulated
mns <- aggregate(dat[, c('emis.t', 'emis.n')], dat[, c('temp.c', 'speed.tar')], FUN = mean)
sds <- aggregate(dat[, c('emis.t', 'emis.n')], dat[, c('temp.c', 'speed.tar')], FUN = sd)
ns <- aggregate(dat[, c('emis.t', 'emis.n')], dat[, c('temp.c', 'speed.tar')], FUN = function(x) sum(!is.na(x)))
summ <- merge(mns, sds, by = c('temp.c', 'speed.tar'), suffixes = c('', '.sd'))
summ <- merge(summ, ns, by = c('temp.c', 'speed.tar'), suffixes = c('.mean', '.n'))

# RAD: dplyr and reshape2 packages can help here (as can several others)
