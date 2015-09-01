data <- read.csv("./irish_champs.csv", header= TRUE, stringsAsFactors=FALSE)
average_icu <- tapply (data$ICU.Rating, data$Year, mean, na.rm=TRUE)
png (filename= "average_icu.png", width=480, height=480, bg="white")
barplot (average_icu, col=rainbow(20), ylim=c(1800, 2200), main= "average ICU rating of players in the Irish Championships", 
         xlab= "Year", ylab ="ICU Rating", las=2)
dev.off()