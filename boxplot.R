data <- read.csv("./irish_champs.csv", header= TRUE, stringsAsFactors=FALSE)
png (filename="boxplot_rating.png", width=480, height=480)
boxplot (data$ICU.Rating~data$Year, col="green", las=2, ylab="ICU Rating", xlab="Year",
         main="ICU Ratings of Players in Irish Championships")
dev.off()