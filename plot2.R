# This script produces plot number 2
# Read the data
data <- read.table("../household_power_consumption.txt",na.strings="?",sep=";",header=T)
# Fetch subset of data
data <- rbind(data[data$Date=='1/2/2007',],data[data$Date=='2/2/2007',])
# Set the locale
Sys.setlocale(locale = "C")
# Open PNG graphic device
png(filename='plot2.png',width=480,height=480)
# Plot the figure
datetime <- strptime(paste(data$Date, data$Time), format='%d/%m/%Y %H:%M:%S')
# Plot the figure
with(data,plot(datetime,Global_active_power,type="l",ylab='Global Active Power (kilowatts)',xlab=""))
# Close PNG graphic device
dev.off()