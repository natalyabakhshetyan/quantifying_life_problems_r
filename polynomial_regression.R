#Generalized linear fitting
#polynomial regression

a <- 3
b <- -25
c <- 10
x.data <- seq(1,10,0.1)
y.data <- a*x.data^n + b*x.data + c + 10*runif(length(x.data))
myfit <- lm(y.data ~ poly(x.data,2,raw = TRUE))
af <- exp(myfit$coefficients[3])
bf <- myfit$coefficients[2]
cf <- myfit$coefficients[1]
summary(myfit)
plot(x.data, y.data)
