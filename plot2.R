#Read data with sep = ;
data_electricity <- read.csv("/Users/debjit/Downloads/household_power_consumption.txt", sep = ";", stringsAsFactors = F)

#Select data between 1/2/2007 : 2/2/2007
data_select2days <- data_electricity[data_electricity$Date == "1/2/2007" | data_electricity$Date == "2/2/2007",]

#Convert type
data_select2days$Global_active_power <- as.numeric(data_select2days$Global_active_power)


png(filename = "plot2.png")
plot(data_select2days$Global_active_power, type = "line", xlab = "", ylab = "Global Active Power (kilowatts)", axes = F)
axis(1, at = 0, "Thu")
axis(1, at = nrow(data_select2days)/2, "Fri")
axis(1, at = nrow(data_select2days), "Sat")
axis(2)
box()
dev.off()
