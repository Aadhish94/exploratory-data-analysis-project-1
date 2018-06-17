#Plot 1
> h<-subset(household_power_consumption,household_power_consumption$Date=="1/2/2007"|household_power_consumption$Date=="2/2/2007")
> h[1:5,]
> hist(as.numeric(as.character(h$Global_active_power)),col="red",main="Global Active Power",xlab="Global Active Power(kilowatts)")
> 
  > dev.copy(png,filename="Plot1.png")
png 
4 
> dev.off()