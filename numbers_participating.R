data <- read.csv("./irish_champs.csv", header= TRUE, stringsAsFactors=FALSE)
numbers_taking_part <-table(data$Year)
png (filename= "numbers_participating.png", width=480, height=480, bg="white")
barplot (numbers_taking_part, col=rainbow(20), main= "numbers participating in Irish Championships", 
         xlab= "Year", ylab= "Number of Participants", las=2)
dev.off()