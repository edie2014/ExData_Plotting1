# Draw histogram of global active power (kilowatts)
# for 1 and 2 February 2007

# Comment out if data has already been downloaded
source("data_download.R")

source("data_load.R")
attach(power)

png(filename = "plot1.png",
    width = 480, height = 480)

hist(Global_active_power, col = "red",
     xlab = "Global Active Power (kilowatts)",
     main = "Global Active Power")

dev.off()
