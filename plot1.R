source("power.R")

png("plot1.png", width = 480, height = 480)

hist(power$Global_active_power,
     main = "Global Active power",
     xlab = "Global Active Power (kilowatts)",
     col = "red")

dev.off()
