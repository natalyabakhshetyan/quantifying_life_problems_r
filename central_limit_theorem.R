#Central Limit Theorem Math exercise

population.Chicago <- c(2.7,2.9,2.8,3.0)
n <- length(population.Chicago) #sample size
m = mean(population.Chicago) #sample mean
s.d = sd(population.Chicago) #standard deviation
ste <- s.d/sqrt(n) #standard error
z0.95 <- 1.96 # z for alpha = 0.95
z0.90 <- 1.65
z0.99 <- 2.58
conf.int.plus <- m + z0.99 * ste

