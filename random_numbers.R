#Random numbers
sample(1:20, 10) #all numbers are unique
sample(1:20, 10, replace = TRUE)  #numbers can be repeated
rbinom(1,20, 0.2) #rbinom(sample size, number of binary trials, probability of success)
dbinom(2,20,0.2) #dbinom(number of successes, number of trials, probability of success) = probability

#Example
n <- 20
p <- 0.6
dbinom(1,n,p)

values.vec <- 0:n
prob.dist <- dbinom(values.vec,n,p)
barplot(prob.dist, names.arg = values.vec, xlab = "binomial RV", ylab = "probability", main = "binom dist with n = 20 and p = 0.2")

