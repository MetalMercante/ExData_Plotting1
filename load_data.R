loadProj1 <- function(){
        
        base <- read.csv("F:\\Drive\\R\\Exploratory_proj_1\\household_power_consumption.txt",
                         sep=";", colClasses=c("character", "character", rep("numeric",7)),na="?")
        
        base$Date <- as.Date(base$Date, "%d/%m/%Y")
        base$Time<-strptime(paste(base$Date, base$Time), "%Y-%m-%d %H:%M:%S")
        base$Global_active_power <- as.numeric(base$Global_active_power)
        
        #We will only be using data from the dates 2007-02-01 and 2007-02-02
        days <- as.Date(c("2007-02-01","2007-02-02"), "%Y-%m-%d")
        base2 <- subset(base, base$Date %in% days)
        
        loadProj1 <- base2
}


