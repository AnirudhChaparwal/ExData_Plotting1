## Reading and loading the dataset

power<-read.table(file="C:/Users/Anirudh/Desktop/exdata_data_household_power_consumption/household_power_consumption.txt",header = TRUE,sep=";",stringsAsFactors=FALSE)

## Subset the data to include the required dates

library(lubridate)
power$Date<-as.Date(power$Date,"%d/%m/%Y")
power<-subset(power,Date=="2007-02-01" | Date=="2007-02-02")
power$dateTime<-paste(power$Date,power$Time)
power$dateTime<-ymd_hms(power$dateTime)

## Plot on screen device

par(mfcol=c(2,2))

plot(power$dateTime,power$Global_active_power,type="l",xlab="",ylab="Global Active Power (kilowatts)")

plot(power$dateTime,power$Sub_metering_1,type="l",xlab="",ylab="Energy sub metering")
lines(power$dateTime,power$Sub_metering_2,col="Red",type="l")
lines(power$dateTime,power$Sub_metering_3,col="Blue",type="l")
legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"),lty=1)

plot(power$dateTime,power$Voltage,type="l",xlab="dateTime",ylab="Voltage")

plot(power$dateTime,power$Global_reactive_power,type="l",xlab="dateTime",ylab="Global_reactive_power (kilowatts)")

## open .png

png("plot4.png",width=480,height=480)

par(mfcol=c(2,2))

plot(power$dateTime,power$Global_active_power,type="l",xlab="",ylab="Global Active Power (kilowatts)")

plot(power$dateTime,power$Sub_metering_1,type="l",xlab="",ylab="Energy sub metering")
lines(power$dateTime,power$Sub_metering_2,col="Red",type="l")
lines(power$dateTime,power$Sub_metering_3,col="Blue",type="l")
legend("topright",legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"),lty=1)

plot(power$dateTime,power$Voltage,type="l",xlab="dateTime",ylab="Voltage")

plot(power$dateTime,power$Global_reactive_power,type="l",xlab="dateTime",ylab="Global_reactive_power (kilowatts)")

## Close png

plot(power$dateTime,power$Global_reactive_power,type="l",xlab="dateTime",ylab="Global_reactive_power (kilowatts)")