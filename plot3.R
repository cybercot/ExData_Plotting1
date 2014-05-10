# This script produces plot number 3
# Read the data
data <- read.table("../household_power_consumption.txt",na.strings="?",sep=";",header=T)
# Fetch subset of data
data <- rbind(data[data$Date=='1/2/2007',],data[data$Date=='2/2/2007',])
# Open PNG graphic device
png(filename='plot3.png',width=480,height=480)
# Plot the figure
with(data,{
		plot(datetime,Sub_metering_1,col="black",type="l",ylab='Energy sub metering',xlab='')
		lines(datetime,Sub_metering_2,col="red")
		lines(datetime,Sub_metering_3,col="blue")
		legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=1,col=c("black","red","blue"))
	})
# Close PNG graphic device
dev.off()


