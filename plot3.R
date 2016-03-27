#Read data with sep = ;
data_electricity <- read.csv("/Users/debjit/Downloads/household_power_consumption.txt", sep = ";", stringsAsFactors = F)

#Select data between 1/2/2007 : 2/2/2007
data_select2days <- data_electricity[data_electricity$Date == "1/2/2007" | data_electricity$Date == "2/2/2007",]

#Convert types
data_select2days$Sub_metering_1 <- as.numeric(data_select2days$Sub_metering_1)
data_select2days$Sub_metering_2 <- as.numeric(data_select2days$Sub_metering_2)
data_select2days$Sub_metering_3 <- as.numeric(data_select2days$Sub_metering_3)


png(filename = "plot3.png")
plot(data_select2days$Sub_metering_1, type = "n", xlab = "", ylab = "Energy sub meetering", axes = F)
points(data_select2days$Sub_metering_1, type = "line")
points(data_select2days$Sub_metering_2, type = "line", col = "red")
points(data_select2days$Sub_metering_3, type = "line", col = "blue")
axis(1, at = 0, "Thu")
axis(1, at = nrow(data_select2days)/2, "Fri")
axis(1, at = nrow(data_select2days), "Sat")
axis(2)
box()
legend("topright", legend = c("Sub_meetering_1", "Sub_meetering_2", "Sub_meetering_3"), col = c("black", "red", "blue"), lty = 1)
dev.off()
