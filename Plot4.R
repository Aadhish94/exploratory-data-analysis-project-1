#Plot4
> h<-subset(household_power_consumption,household_power_consumption$Date=="1/2/2007"|household_power_consumption$Date=="2/2/2007")
> h$Date <- as.Date(h$Date, format="%d/%m/%Y")
> h$Time <- strptime(h$Time, format="%H:%M:%S")
> h[1:1440,"Time"] <- format(h[1:1440,"Time"],"2007-02-01 %H:%M:%S")
> h[1441:2880,"Time"] <- format(h[1441:2880,"Time"],"2007-02-02 %H:%M:%S")
> par(mfrow=c(3,2))
> with(h,plot(h$Time,as.numeric(as.character(h$Global_active_power)),type="l",  xlab="",ylab="Global Active Power"))  
> with(h,plot(h$Time,as.numeric(as.character(h$Voltage)), type="l",xlab="datetime",ylab="Voltage"))
> plot(h$Time,h$Sub_metering_1,type="n",xlab="",ylab="Energy sub metering")
> with(h,lines(Time,as.numeric(as.character(Sub_metering_1))))
> with(h,lines(Time,as.numeric(as.character(Sub_metering_2)),col="red"))
> with(h,lines(Time,as.numeric(as.character(Sub_metering_3)),col="blue"))
> legend("topright", lty=1, col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), cex = 0.6)
> with(h,plot(h$Time,as.numeric(as.character(h$Global_reactive_power)),type="l",xlab="datetime",ylab="Global_reactive_power"))
> 
  > dev.copy(png,filename="Plot4.png")
png 
4 
> dev.off()
RStudioGD 
2 