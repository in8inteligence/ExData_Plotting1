library(data.table)
library(dplyr)
library(lubridate)
fileurl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
if (!file.exists('./Data Science/UCI HAR Dataset.zip')){
  download.file(fileurl,'./household_power_consumption.zip', mode = 'wb')
  unzip('./household_power_consumption.zip', exdir = getwd())
}
par(mfrow=c(2,2))
plot(house_a_data$Global_active_power ~ house_a_data$DateTime, type="l", xlab = "", ylab ="Global Active Power" )
plot(house_a_data$Voltage ~ house_a_data$DateTime, type="l", xlab = "", ylab ="Voltage" )

with(house_a_data, {plot(Sub_metering_1 ~ DateTime, type="l", xlab = "", ylab ="Engery sub metering" )})
lines(house_a_data$Sub_metering_2 ~ house_a_data$DateTime, col = 'Red')
lines(house_a_data$Sub_metering_3 ~ house_a_data$DateTime, col = 'Blue')
legend("topright", col=c("black", "red", "blue"), lty=1, lwd=2, bty="n",legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
plot(house_a_data$Global_reactive_power ~ house_a_data$DateTime, type="l", xlab = "", ylab ="Global_reactive_power" )
## Save File
dev.copy(png, file="plot4.png", height=480, width=480)
dev.off()