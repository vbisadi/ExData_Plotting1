cat("\014")
alldata<-read.table("household_power_consumption.txt",header=TRUE,sep=";")
data<-alldata[66637:69516,]
date<-as.character(levels(data$Date))[data$Date]
time<-as.character(levels(data$Time))[data$Time]
x <- paste(date, time)
datetime<-strptime(x, "%d/%m/%Y %H:%M:%S")
GAP<-as.numeric(levels(data$Global_active_power))[data$Global_active_power]
png(file="plot2.png",width=480,height=480)
plot(datetime, GAP, type = "l",xlab=" ",ylab="Global Active Power (kilowatts)")
dev.off()