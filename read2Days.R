
read2Days <- function() {
    #read data
    fileWtPath <- "/Users/d040294/SW/courseware/DataScience_Coursera/ExploratoryDataAnalysis/household_power_consumption.txt"
    consumption <- read.table(fileWtPath, sep = ";", header = TRUE, na.strings=c("NA", "?"))
    
    #Date format
    consumption$Date <- as.Date(consumption$Date, "%d/%m/%Y")
    
    # extract data for the relevant dates
    cons2days <- consumption[consumption$Date >= "2007-02-01" & consumption$Date <= "2007-02-02", ]
    
    #return Data Frame cons2days
    cons2days
}
