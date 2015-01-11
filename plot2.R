# Plot global active power (kilowatts) against time
# for 1 and 2 February 2007

# Comment out if data has already been downloaded
source("data_download.R")

source("data_load.R")
attach(power)

png(filename = "plot2.png",
    width = 480, height = 480)

with(power, plot(Date_time, Global_active_power, type = "l",
                 xlab = "", ylab = "Global Active Power (kilowatts)"))

dev.off()
