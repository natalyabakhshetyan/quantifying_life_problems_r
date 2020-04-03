# Ch 8. Generalized linear fitting in R
#logarithmic transforms
# for y = 0.3x ^1.7

a <- 0.3
n <- 1.7
x.data <- seq(1,10,0.1)
y.data <- a*x.data^n + 2*runif(length(x.data))
myfit <- lm(log(y.data) ~ log(x.data))
nf <- myfit$coefficients[2]
af <- exp(myfit$coefficients[1])
summary(myfit)
plot(log(x.data), log(y.data))
abline

