source("power.R")

png("plot3.png", width = 480, height = 480)

plot(power$Time, power$Sub_metering_1,
     xlab = '',
     ylab = 'Energy sub metering',
     type = 'l')
lines(power$Time, power$Sub_metering_2, col='red')
lines(power$Time, power$Sub_metering_3, col='blue')
legend('topright',
       legend = c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'),
       col = c('black', 'red', 'blue'),
       lty = 'solid')

dev.off()
