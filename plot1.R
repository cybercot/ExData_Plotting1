# This script produces plot number 1
# Read the data
data <- read.table("../household_power_consumption.txt",na.strings="?",sep=";",header=T)
# Fetch subset of data
data <- rbind(data[data$Date=='1/2/2007',],data[data$Date=='2/2/2007',])
# Open PNG graphic device
png(filename='plot1.png',width=480,height=480)
# Plot the histogram
with(data,hist(Global_active_power,col="red",main="Global Active Power",xlab='Global Active Power (kilowatts)'))
# Close PNG graphic device
dev.off()