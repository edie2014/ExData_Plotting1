# Multiple plots

# Comment out if data has already been downloaded
source("data_download.R")

source("data_load.R")
attach(power)

png(filename = "plot4.png",
    width = 480, height = 480, type = "cairo")

par(mfcol = c(2, 2))

with(power, {
    plot(Date_time, Global_active_power, type = "l",
         xlab = "", ylab = "Global Active Power")
    plot(Date_time, Sub_metering_1, type = "n",
         xlab = "", ylab = "Energy sub metering")
        with(power, lines(Date_time, Sub_metering_1))
        with(power, lines(Date_time, Sub_metering_2, col = "red"))
        with(power, lines(Date_time, Sub_metering_3, col = "blue"))
        legend("topright", col = c("black", "red", "blue"),
               lty = 1, bty = "n",
               legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
    plot(Date_time, Voltage, type = "l",
         xlab = "datetime")
    plot(Date_time, Global_reactive_power, type = "l", lwd = 0.5,
         xlab = "datetime")
})

dev.off()
