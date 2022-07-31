#Declare file name
fileName<-"household_power_consumption.txt"

#Read file into table
power<-read.table(fileName, sep=";", header=TRUE)

#Subset for specific date range
pwr<-subset(power,power$Date=="1/2/2007" | power$Date=="2/2/2007")

#Convert date and time
date_time<-strptime(paste(pwr$Date, pwr$Time), "%d/%m/%Y %H:%M:%S")

#Create plot
plot(date_time,pwr$Global_active_power,type="l",xlab="",ylab="Global Active Power (kilowatts)")

#Copy histogram to png file
dev.copy(png,"Plot2.png",width=480,height=480)
dev.off()

