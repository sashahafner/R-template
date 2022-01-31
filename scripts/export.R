# Export results

# RAD: If the main data frame was modified after reading data in, save a copy for checking
write.csv(dat, '../output/dat.csv', row.names = FALSE)

# Export summary after rounding and sorting
summ <- rounddf(summ, 3, func = signif)
summ <- summ[order(summ$temp.c, summ$speed.tar), ]
write.csv(summ, '../output/summary.csv', row.names = FALSE)
