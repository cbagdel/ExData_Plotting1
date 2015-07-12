#read data
consumption <- read.table("household_power_consumption.txt", sep = ";")
#get rid of ? and extract Global_active_power
power <- as.numeric(consumption$Global_active_power[consumption$Global_active_power != "?"])

#construct the plot
hist(power, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)", breaks = 15)

#copy plot to png file
dev.copy(png, file = "plot1.png")
dev.off()