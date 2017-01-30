source("common.R")

plot3 <- function(x=NULL) {
    # load the data set if we were not given one
    if (is.null(x)) {
        x <- load.data()
    }
    
    # open the png file
    png("plot3.png", width=480, height=480)
    
    # create an empty chart. take the min and max of all of the data
    # we are using to make sure the dimensions are correct.
    plot(c(min(x$DateTime), max(x$DateTime)),
         c(min(x$Sub_metering_1, x$Sub_metering_2, x$Sub_metering_3),
           max(x$Sub_metering_1, x$Sub_metering_2, x$Sub_metering_3)), 
         type="n",
         xlab="",
         ylab="Energy sub metering")
    
    lines(x$DateTime, 
          x$Sub_metering_1,
          col="black")
          
    lines(x$DateTime, 
          x$Sub_metering_2,
          col="red")

    lines(x$DateTime, 
          x$Sub_metering_3,
          col="blue")
           
    legend("topright", 
           legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
           # draw colored lines for the legend 
           lty=c(1, 1), col=c("black", "red", "blue"))
    
    # close the png file
    dev.off()
}