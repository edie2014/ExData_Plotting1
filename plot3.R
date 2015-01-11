# Plot three energy sub-meterings against time
# for 1 and 2 February 2007
# Sub-metering 1: kitchen
# Sub-metering 2: laundry room
# Sub-metering 3: an electric water heater and and air conditioner

# Comment out if data has already been downloaded
source("data_download.R")

source("data_load.R")
attach(power)

png(filename = "plot3.png",
    width = 480, height = 480)

with(power, plot(Date_time, Sub_metering_1, type = "n",
                 xlab = "", ylab = "Energy sub metering"))
with(power, lines(Date_time, Sub_metering_1))
with(power, lines(Date_time, Sub_metering_2, col = "red"))
with(power, lines(Date_time, Sub_metering_3, col = "blue"))
legend("topright", col = c("black", "red", "blue"), lty = 1,
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

dev.off()
