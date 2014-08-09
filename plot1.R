cat("\014") 
alldata<-read.table("household_power_consumption.txt",header=TRUE,sep=";")
data<-alldata[66637:69516,]
GAP<-as.numeric(levels(data$Global_active_power))[data$Global_active_power]
png(file="plot1.png",width=480,height=480)
hist(GAP, col = "red", main="Global Active Power",xlab="Global Active Power(kilowatts)")
dev.off()
