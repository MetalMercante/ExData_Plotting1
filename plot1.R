#setwd("F:\\Drive\\R\\ExData_Plotting1")

#### Plot 01
base2 <- loadProj1()

png("./PLOTS/plot1.png", width = 480, height = 480)

hist(base2$Global_active_power,
     col="red",
     main ="Global Active Power",
     xlab = "Global Active Power (kilowatts)")

dev.off()
