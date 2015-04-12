#setwd("F:\\Drive\\R\\ExData_Plotting1")

#### Plot 04
base2 <- loadProj1()

#### I live in Brazil, so I need to change this...
Sys.setlocale("LC_ALL","C")

png("./PLOTS/plot4.png", width = 480, height = 480)
par(mfrow = c(2, 2))


plot(base2$Time, base2$Global_active_power,type = "n",
     ylab = "Global Active Power (kilowatts)",
     xlab= "")
lines(base2$Time, base2$Global_active_power)

plot(base2$Time, base2$Voltage,type = "l",
     ylab = "Voltage",
     xlab= "datetime")

plot(base2$Time, base2$Sub_metering_1,
     type="l",
     col="black",
     ylab = "Energy sub metering",
     xlab= "")
lines(base2$Time, base2$Sub_metering_2, col="red")
lines(base2$Time, base2$Sub_metering_3, col="blue")
legend("topright",
       col=c("black","red","blue"),
       lwd=2,
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       bty = "n")

plot(base2$Time, base2$Global_reactive_power,type = "l",
     ylab = "Global_reactive_power",
     xlab= "datetime")

dev.off()
