#1
leanheat = read.table("lean_heat.txt", header = TRUE)
x.data <- leanheat$B
y.data <- leanheat$H
myfit <- lm(y.data ~ x.data) #best fil line calculation
plot(x.data,y.data, xlab = 'Body Size', ylab = 'Heat')
abline(myfit) # best fit line visualization
summary(myfit)
which(y.data> mean(y.data))
