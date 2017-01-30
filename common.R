load.data <- function() {
    # read source data
    x <- read.csv("household_power_consumption.txt", 
                  stringsAsFactors=FALSE, sep=";", na.strings="?")
    
    date.format <- "%d/%m/%Y"
    time.format <- "%H:%M:%S"
    date.time.format <- paste(date.format, time.format)
    
    # convert to date objects
    x$DateTime <- strptime(paste(x$Date, x$Time), 
                          paste(date.format, time.format))
    
    # we could also convert these, but we don't need them
    x$Date <- strptime(x$Date, date.format)
    # x$Time <- strptime(x$Time, time.format)
    
    # filter dates
    first_date <- strptime("1/2/2007", date.format)
    last_date <- strptime("2/2/2007", date.format)
    x <- x[x$Date >= first_date & x$Date <= last_date,]
    
    x
}