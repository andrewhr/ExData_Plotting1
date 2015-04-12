source("power.R")

png("plot4.png", width = 480, height = 480)

par(mfrow = c(2,2))

# top-left
plot(power$Time, power$Global_active_power,
     xlab='',
     ylab='Global Active Power',
     type='l')

# top-right
plot(power$Time, power$Voltage,
     xlab = 'datetime',
     ylab = 'Voltage',
     type = 'l')

# bottom-left
plot(power$Time, power$Sub_metering_1,
     xlab = '',
     ylab = 'Energy sub metering',
     type = 'l')
lines(power$Time, power$Sub_metering_2, col='red')
lines(power$Time, power$Sub_metering_3, col='blue')
legend('topright',
       legend = c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'),
       col = c('black', 'red', 'blue'),
       lty = 'solid',
       bty = 'n')

# bottom-right
plot(power$Time, power$Global_reactive_power,
     xlab = 'datetime',
     ylab = 'Global_reactive_power',
     type = 'l')

dev.off()
