# Download and unzip the data file

path <- getwd()
temp <- tempfile()
fileUrl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"

download.file(fileUrl, temp)
dateDownloaded = date()

unzip(temp)
unlink(temp)

cat("Data downloaded on", date())
