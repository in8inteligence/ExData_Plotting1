library(data.table)
library(dplyr)
library(lubridate)
fileurl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
if (!file.exists('./Data Science/UCI HAR Dataset.zip')){
  download.file(fileurl,'./household_power_consumption.zip', mode = 'wb')
  unzip('./household_power_consumption.zip', exdir = getwd())
}
plot(house_a_data$Global_active_power ~ house_a_data$DateTime, type="l", xlab= "", ylab="Global Active power (kilowatts)")
## Save File
dev.copy(png, file="plot2.png", height=480, width=480)
dev.off()
