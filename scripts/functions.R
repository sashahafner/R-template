# Load additional functions

source('../functions/dfsumm.R')
source('../functions/rounddf.R')

# RAD: Alternative approach below, convenient with many functions
ff <- list.files('../functions', full.names = TRUE)
for (i in ff) source(i)

