# Load packages
# RAD: Load all necessary add-on packages and no others!

library('ggplot2')
library('rmarkdown')

# RAD: Good practice to keep a record of R and all package versions
# RAD: The code below creates a text file with this information in the logs directory
sink('../logs/versions.txt')
  print(sessionInfo())
sink()
