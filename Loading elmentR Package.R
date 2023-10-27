#Install correct packages for element R to load properly...
remotes::install_version("gdata", version = "2.18.0")
remotes::install_version("readODS", version = "1.6.7")
library(readODS)
library(gdata)
install.packages("elementR", dependencies = T)
library(elementR)
runElementR()



