library(data.table)
library(dplyr)
library(lubridate)
fileurl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
if (!file.exists('./Data Science/UCI HAR Dataset.zip')){
  download.file(fileurl,'./household_power_consumption.zip', mode = 'wb')
  unzip('./household_power_consumption.zip', exdir = getwd())
}
with(house_a_data, {plot(Sub_metering_1 ~ DateTime, type="l", xlab= "", ylab="Energy Sub Metering")})
lines(house_a_data$Sub_metering_2 ~ house_a_data$DateTime, col = 'Red')
lines(house_a_data$Sub_metering_3 ~ house_a_data$DateTime, col = 'Blue')
legend("topright", lty=1, lwd =3, col=c("black","red","blue") ,legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
## Save File
dev.copy(png, file="plot3.png", height=480, width=480)
dev.off()