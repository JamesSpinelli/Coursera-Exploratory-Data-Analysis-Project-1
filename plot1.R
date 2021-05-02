

household_power_consumption <- read.csv("C:/Users/YourUser/Desktop/household_power_consumption.txt", sep=";")

project1 = household_power_consumption

project1$Date <-as.Date(project1$Date,"%d/%m/%Y")

subset(project1, Date> "2006-12-31" & Date < "2008-1-1")

project1$Global_active_power <-as.numeric(project1$Global_active_power)

globalData = with(project1,(Global_active_power))

hist(globalData,col=c("red"),xlab="Global Active Power (kilowatts)",ylab="Frequency",main="Global Active Power")
