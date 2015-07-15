##read data
#fileWtPath <- "/Users/d040294/SW/courseware/DataScience_Coursera/ExploratoryDataAnalysis/household_power_consumption.txt"
#consumption <- read.table(fileWtPath, sep = ";", header = TRUE, na.strings=c("NA", "?"))

##Date format
#consumption$Date <- as.Date(consumption$Date, "%d/%m/%Y")

## extract data for the relevant dates
#cons2days <- consumption[consumption$Date >= "2007-02-01" & consumption$Date <= "2007-02-02", ]

#above lines were extracted into a function in a separate file for re-use
source("read2Days.R")
cons2days <- read2Days()

#construct the plot
hist(cons2days$Global_active_power, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)") #, breaks = 15)

#copy plot to png file
dev.copy(png, file = "ExData_Plotting1/plot1.png")
dev.off()