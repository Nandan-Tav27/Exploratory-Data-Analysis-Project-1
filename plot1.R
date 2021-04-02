##Loading the data
my_data <- read.table("household_power_consumption.txt",skip=1,sep=";")
##Change column headers to make them meaningful
names(my_data) <- c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")
## Taking data from dates  2007-02-01 to 2007-02-02
my_data2 <- subset(my_data,my_data$Date=="1/2/2007" | my_data$Date =="2/2/2007")
my_data2$Global_active_power <- as.numeric(my_data2$Global_active_power)
png("plot1.png", width=480, height=480)
hist(my_data2$Global_active_power, col="red", border="black", main ="Global Active Power", xlab="Global Active Power (kilowatts)", ylab="Frequency")
dev.off()

