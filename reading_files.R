data <- read.table("hr", header = TRUE)
mean(data$HR)
var(data$HR)
sd(data$HR)
summary(data$HR)
hist(data$HR, col = "pink", main = "Heart Rate Data", xlab = "heart rate(bpm")

