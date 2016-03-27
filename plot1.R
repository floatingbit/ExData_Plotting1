#Read data with sep = ;
data_electricity <- read.csv("/Users/debjit/Downloads/household_power_consumption.txt", sep = ";", stringsAsFactors = F)

#Select data between 1/2/2007 : 2/2/2007
data_select2days <- data_electricity[data_electricity$Date == "1/2/2007" | data_electricity$Date == "2/2/2007",]

#Convert type
data_select2days$Global_active_power <- as.numeric(data_select2days$Global_active_power)

png(filename = "plot1.png")
hist(data_select2days$Global_active_power, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")
dev.off()