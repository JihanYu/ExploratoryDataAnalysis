workingpath <- "C:\\Users\\MED1\\Desktop\\Coursera\\project\\ExploratoryDataAnalysis"
setwd(workingpath)

elec <- read.table("./data/household_power_consumption.txt", sep=";",
					colClasses="character", header=TRUE)

elec2 <- elec
elec2$Date <- as.Date(elec2$Date, "%d/%m/%Y")
elec2[,c(3:9)] <- sapply(elec2[, c(3:9)], as.numeric)

