# Author: Steven Worthington
# Source: https://gist.github.com/stevenworthington/3178163

# Install and load multiple R packages
# Check to see if packages are installed
# Install them if they are not, then load them into the R session

ipak <- function(pkg){
    new.pkg <- pkg[!(pkg %in% installed.packages()[, "Package"])]
    if (length(new.pkg)) {
        install.packages(new.pkg, dependencies = TRUE)
    }
    sapply(pkg, require, character.only = TRUE)
}

# # usage
# packages <- c("ggplot2", "plyr", "reshape2", "RColorBrewer", "scales", "grid")
# ipak(packages)
