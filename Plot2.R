#Plot2
> h<-subset(household_power_consumption,household_power_consumption$Date=="1/2/2007"|household_power_consumption$Date=="2/2/2007")
> h$Date <- as.Date(h$Date, format="%d/%m/%Y")
> h$Time <- strptime(h$Time, format="%H:%M:%S")
> h[1:1440,"Time"] <- format(h[1:1440,"Time"],"2007-02-01 %H:%M:%S")
> h[1441:2880,"Time"] <- format(h[1441:2880,"Time"],"2007-02-02 %H:%M:%S")
> 
  > plot(h$Time,as.numeric(as.character(h$Global_active_power)),type="l",xlab="",ylab="Global Active Power (kilowatts)",main="Global Active Power Vs Time") 
> dev.copy(png,filename="Plot2.png")
png 
4 
> dev.off()
RStudioGD 
2 