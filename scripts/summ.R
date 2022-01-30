# Summary

head(dat)

# RAD: There are many different options for getting a table of means etc.
mns <- aggregate(dat[, c('emis.t', 'emis.n')], dat[, c('temp.c', 'speed.tar')], FUN = mean)
sds <- aggregate(dat[, c('emis.t', 'emis.n')], dat[, c('temp.c', 'speed.tar')], FUN = sd)
ns <- aggregate(dat[, c('emis.t', 'emis.n')], dat[, c('temp.c', 'speed.tar')], FUN = function(x) sum(!is.na(x)))
