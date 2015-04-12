zip  <- "./data/household_power_consumption.zip"
file <- "./data/household_power_consumption.txt"
if (!file.exists(file)) {
  download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip",
                zip,
                method = "curl")
  unzip(zip, exdir = "./data")
}

power <- read.csv(file,
                  header = TRUE,
                  sep = ";",
                  na.strings = "?",
                  colClasses = c(rep('character', 2),
                                 rep('numeric', 7)))

power$Date <- as.Date(power$Date, "%d/%m/%Y")
power$Time <- paste(power$Date, power$Time, sep = " ")
power$Time <- strptime(power$Time, "%Y-%m-%d %H:%M:%S")

start <- as.Date("2007-02-01")
end   <- as.Date("2007-02-02")
power <- subset(power, start <= Date & Date <= end)
