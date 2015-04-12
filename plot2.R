#setwd("F:\\Drive\\R\\ExData_Plotting1")

#### Plot 02
base2 <- loadProj1()

png("./PLOTS/plot2.png", width = 480, height = 480)

Sys.setlocale("LC_ALL","C")
plot(base2$Time, base2$Global_active_power,type = "n",
     ylab = "Global Active Power (kilowatts)",
     xlab= "")
lines(base2$Time, base2$Global_active_power)


dev.off()
