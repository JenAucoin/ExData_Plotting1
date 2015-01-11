rawdata <- read.delim("household_power_consumption.txt", header = TRUE,  sep = ";", na.strings = "?")
certainDates <- rbind(subset(rawdata, rawdata$Date == "1/2/2007"), subset(rawdata,rawdata$Date == "2/2/2007") )
Date_Time <- strptime(paste(certainDates$Date, certainDates$Time, sep = " "), format = "%d/%m/%Y %H:%M:%S")
myData<- cbind(Date_Time, certainDates[,3:9])
png(file = "plot1.png", width = 480, height = 480)
hist(myData$Global_active_power, col = "red", xlab = "Global Active Power (kilowatts)",main = "Global Active Power")
dev.off()

