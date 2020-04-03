# Random sampling
#1 

size <- 100
means <- rep(NA, size)
sds <- rep(NA, size)
for (i in 1:size){
  sample <- runif(20)
  means[i] <- mean(sample)
  sds[i] <- sd(sample)
}

mean(means)
sd(means)
hist(means)
  

#2

size <- 100
means <- rep(NA, size)
sds <- rep(NA, size)
for (i in 1:size){
  sample <- runif(180)
  means[i] <- mean(sample)
  sds[i] <- sd(sample)
}

mean(means)
sd(means)
hist(means)

