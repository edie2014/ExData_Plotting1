# Load and clean data

Sys.setlocale("LC_TIME", "English")
source("pkg_install.R")

# This script requires the 'dplyr' and 'lubridate' packages
pkg <- c("dplyr", "lubridate")
ipak(pkg)

# Load all data
# Keep only data from the dates 2007-02-01 and 2007-02-02
# Convert Date and Time to POSIXct format
power <-
    tbl_df(read.table("household_power_consumption.txt", header = T,
                      sep = ";", na.strings = "?", comment.char = "",
                      quote = "", colClasses = c(rep("character", 2), rep("numeric", 7))
                    )
           ) %>%
    filter(Date == "1/2/2007" | Date == "2/2/2007") %>%
    mutate(Date_time = dmy_hms(paste(Date, Time))) %>%
    select(10, 3:9)
