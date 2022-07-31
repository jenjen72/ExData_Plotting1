#Declare file name
fileName<-"household_power_consumption.txt"

#Read file into table
power<-read.table(fileName, sep=";", header=TRUE)

#Subset for specific date range
pwr<-subset(power,power$Date=="1/2/2007" | power$Date=="2/2/2007")

#Convert date and time
date_time<-strptime(paste(pwr$Date, pwr$Time), "%d/%m/%Y %H:%M:%S")

#Create plotting device
png("Plot3.png",width=480,height=480)

#Create plot
plot(date_time,pwr$Sub_metering_1,type="l",xlab="",ylab="Energy sub metering")
lines(date_time,pwr$Sub_metering_2,col="red")
lines(date_time,pwr$Sub_metering_3,col="blue")
legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"),lty=1)

#Turn of plotting device
dev.off()

