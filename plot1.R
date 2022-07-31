#Declare file name
fileName<-"household_power_consumption.txt"

#Read file into table
power<-read.table(fileName, sep=";", header=TRUE)

#Subset for specific date range
pwr<-subset(power,power$Date=="1/2/2007" | power$Date=="2/2/2007")

#Create histogram
hist(as.numeric(pwr$Global_active_power),col="red",main="Global Active Power",xlab="Global Active Power (kilowatts)")

#Copy histogram to png file
dev.copy(png,"Plot1.png",width=480,height=480)
dev.off()
