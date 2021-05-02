

household_power_consumption <- read.csv("C:/Users/YourUser/Desktop/household_power_consumption.txt", sep=";")

project1 = household_power_consumption

project1$Date <-as.Date(project1$Date,"%d/%m/%Y")

library(lubridate)

updatedProject = subset(project1, Date> "2007-1-31" & Date < "2007-2-3")

updatedProject <- mutate(updatedProject, dateTime = ymd_hms(paste(Date, Time)))



plot(x=updatedProject$dateTime,y=updatedProject$Global_active_power, type="l", xlab="",ylab="Global Active Power (kilowatts)")




