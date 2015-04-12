#setwd("F:\\Drive\\R\\ExData_Plotting1")

#### Plot 03
base2 <- loadProj1()

png("./PLOTS/plot3.png", width = 480, height = 480)

#### I live in Brazil, so I need to change this...
Sys.setlocale("LC_ALL","C")

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
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

dev.off()
