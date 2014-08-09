cat("\014")
alldata<-read.table("household_power_consumption.txt",header=TRUE,sep=";")
data<-alldata[66637:69516,]
date<-as.character(levels(data$Date))[data$Date]
time<-as.character(levels(data$Time))[data$Time]
x <- paste(date, time)
datetime<-strptime(x, "%d/%m/%Y %H:%M:%S")
sm1<-as.numeric(levels(data$Sub_metering_1))[data$Sub_metering_1]
sm2<-as.numeric(levels(data$Sub_metering_2))[data$Sub_metering_2]
sm3<-as.numeric(as.character(data$Sub_metering_3))
png(file="plot3.png",width=480,height=480)
plot(datetime, sm1, type = "l",xlab=" ",ylab="Energy sub metering")
lines(datetime, sm2, type = "l",col="red")
lines(datetime, sm3, type = "l",col="blue")
legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=c(1,1),
       lwd=c(2.5,2.5),col=c("black","red","blue"))
dev.off()
