
#read, chnage date format, and extract 2 days:
source("read2Days.R")
cons2Days <- read2Days()

#combine Date and Time columns into a new DateTime column
cons2Days$DateTime <- strptime(paste(consWtDateTime$Date, consWtDateTime$Time), "%Y-%m-%d %H:%M:%S")

with(cons2Days, {
     plot(DateTime, Global_active_power, type = "n", ylab = "Global Active Power (kilowatts)", xlab = "")
     lines(DateTime, Global_active_power, lwd = 1)
})
#copy plot to png file
dev.copy(png, file = "plot2.png")
dev.off()