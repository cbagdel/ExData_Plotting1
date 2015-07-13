#read data
consumption <- read.table("household_power_consumption.txt", sep = ";", header = TRUE)

#Date format
consumption$Date <- as.Date(consumption$Date, "%d/%m/%Y")

# extract data for the relevant dates
cons2days <- consumption[consumption$Date >= "2007-02-01" & consumption$Date <= "2007-02-01", ]

#get rid of ? and extract Global_active_power
cons2days$Global_active_power <- as.numeric(cons2days$Global_active_power[cons2days$Global_active_power != "?"])

#construct the plot
hist(cons2days$Global_active_power, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)", breaks = 15)

#copy plot to png file
dev.copy(png, file = "plot1.png")
dev.off()