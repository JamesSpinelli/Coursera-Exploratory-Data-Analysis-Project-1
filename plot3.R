
household_power_consumption <- read.csv("C:/Users/YourUser/Desktop/household_power_consumption.txt", sep=";")

project1 = household_power_consumption

project1$Date <-as.Date(project1$Date,"%d/%m/%Y")

library(lubridate)

updatedProject = subset(project1, Date> "2007-1-31" & Date < "2007-2-3")

updatedProject <- mutate(updatedProject, dateTime = ymd_hms(paste(Date, Time)))



plot(x=updatedProject$dateTime,y=updatedProject$Sub_metering_1,xlab="",ylab="Energy Sub Metering", type="l")

lines(x=updatedProject$dateTime,y=updatedProject$Sub_metering_2, type="l",col="red")

lines(x=updatedProject$dateTime,y=updatedProject$Sub_metering_3, type="l",col="blue")

legend("topright", col = c("black","red","blue"),legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=1)
