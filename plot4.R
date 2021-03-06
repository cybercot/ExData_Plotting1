# This script produces plot number 4
# Read the data
data <- read.table("../household_power_consumption.txt",na.strings="?",sep=";",header=T)
# Fetch subset of data
data <- rbind(data[data$Date=='1/2/2007',],data[data$Date=='2/2/2007',])
# Set the locale
Sys.setlocale(locale = "C")
# Open PNG graphic device
png(filename='plot4.png',width=480,height=480)
# Convert Date and Time variables to Date/Time classes
datetime <- strptime(paste(data$Date, data$Time), format='%d/%m/%Y %H:%M:%S')
# Plot the figure
par(mfrow=c(2,2))
with(data,{
		plot(datetime,Global_active_power,type="l",ylab='Global Active Power',xlab="")
		plot(datetime,Voltage,type="l",ylab='Voltage')
		plot(datetime,Sub_metering_1,col="black",type="l",ylab='Energy sub metering',xlab='')
		lines(datetime,Sub_metering_2,col="red")
		lines(datetime,Sub_metering_3,col="blue")
		legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=1,col=c("black","red","blue"),bty="n")
		plot(datetime, Global_reactive_power, type='l',ylab="Global_reactive_power")
	})
# Close PNG graphic device
dev.off()






