source("common.R")

plot1 <- function(x=NULL) {
    # load the data set if we were not given one
    if (is.null(x)) {
        x <- load.data()
    }
    
    # open the png file
    png("plot1.png", width=480, height=480)
    
    hist(x$Global_active_power, 
         main="Global Active Power", 
         xlab="Global Active Power (kilowatts)", 
         # specify frequency for the label in case it is not the default
         ylab="Frequency", 
         col="red")
         
    # close the png file
    dev.off()
}

