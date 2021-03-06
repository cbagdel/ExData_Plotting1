
#read, chnage date format, and extract 2 days:
source("read2Days.R")
cons2Days <- read2Days()

#combine Date and Time columns into a new DateTime column
cons2Days$DateTime <- strptime(paste(consWtDateTime$Date, consWtDateTime$Time), "%Y-%m-%d %H:%M:%S")

# 2 col x 2 rows 
par(mfcol = c(2,2))
with(cons2Days, {
    plot(DateTime, Global_active_power, type = "n", ylab = "Global Active Power (kilowatts)", xlab = "")
    lines(DateTime, Global_active_power, lwd = 1)
})
with(cons2Days, {
    plot(DateTime, Sub_metering_1, type = "n", ylab = "Energy sub metering", xlab = "")
    lines(DateTime, Sub_metering_1, lwd = 1, col = "black")
    lines(DateTime, Sub_metering_2, lwd = 1, col = "red")
    lines(DateTime, Sub_metering_3, lwd = 1, col = "blue")
    legend("topright", lwd = 1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
})
#copy plot to png file
dev.copy(png, file = "plot4.png")
dev.off()