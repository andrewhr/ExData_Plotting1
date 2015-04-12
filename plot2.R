source("power.R")

png("plot2.png", width = 480, height = 480)

plot(power$Time, power$Global_active_power,
     xlab = "",
     ylab = "Global Active Power (kilowatts)",
     type = "l")

dev.off()
