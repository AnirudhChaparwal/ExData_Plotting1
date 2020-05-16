
## Reading and loading the dataset
 
power<-read.table(file="C:/Users/Anirudh/Desktop/exdata_data_household_power_consumption/household_power_consumption.txt",header = TRUE,sep=";")
 
 
## Subset the data to include the required dates
 
s<-as.Date("01/02/2007","%d/%m/%Y")
e<-as.Date("02/02/2007","%d/%m/%Y")
date<-as.Date(as.character(power$Date),"%d/%m/%Y")
date<-s<=date & date<=e

power<-power[date,]
 

## Plot on the screen device
 
hist(as.numeric(power$Global_active_power),main="Global Active Power",col="Red",xlab="Global Active Power(kilowatts)")
 
 
## open .png

png("plot1.png")
 
hist(as.numeric(power$Global_active_power),main="Global Active Power",col="Red",xlab="Global Active Power(kilowatts)")
 
## close png
 
dev.off()