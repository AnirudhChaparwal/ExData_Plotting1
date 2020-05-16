## Reading and loading the dataset

power<-read.table(file="C:/Users/Anirudh/Desktop/exdata_data_household_power_consumption/household_power_consumption.txt",header = TRUE,sep=";",stringsAsFactors=FALSE)

## Subset the data to include the required dates

library(lubridate)
power$Date<-as.Date(power$Date,"%d/%m/%Y")
power<-subset(power,Date=="2007-02-01" | Date=="2007-02-02")
power$dateTime<-paste(power$Date,power$Time)
power$dateTime<-ymd_hms(power$dateTime)

## Plot on screen device

plot(power$dateTime,power$Global_active_power,type="l",xlab="",ylab="Global Active Power (kilowatts)")

## open .png

png("plot2.png",width=480,height=480)

plot(power$dateTime,power$Global_active_power,type="l",xlab="",ylab="Global Active Power (kilowatts)")

## Close png

dev.off()