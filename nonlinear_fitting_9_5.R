# something is done incorrectly
x.data<- runif(20)
#generate some explanatory data points
A <- -5
B <- 100
k <- -4
#generate response data points with an exponential, plus noise
y.data <- A * exp(k*x.data) + B + 0.1 * runif(20)
#fit the log-transformed data to linear relationship
myfit <- lm(log(abs(y.data-B)) ~ x.data)
plot(x.data, y.data)
summary(myfit)
Af <- myfit$coefficients[1]
kf <- myfit$coefficients[2]
curve(B + Af * exp(kf*x), add = TRUE)