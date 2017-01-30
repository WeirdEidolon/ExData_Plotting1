source("common.R")

plot2 <- function(x=NULL) {
    # load the data set if we were not given one
    if (is.null(x)) {
        x <- load.data()
    }
    
    # open the png file
    png("plot2.png", width=480, height=480)

    plot(x$DateTime,
         x$Global_active_power,
         type="l",
         main="",
         xlab="",
         ylab="Global Active Power (kilowatts)")
         
    # close the png file
    dev.off()
}