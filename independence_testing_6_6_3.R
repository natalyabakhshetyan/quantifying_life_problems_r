#independence testing of stimulated data

#1

sample.size <- 50 #50 patients
probA <- 0.5 #probability of disease for genotype A
probB <- 0.5
dis.genA <- rbinom(sample.size,1,probA)
print(dis.genA)
dis.genB <- rbinom(sample.size, 1, probB)
print(dis.genB)
data.mat <- matrix(c(table(dis.genA), table(dis.genB)), ncol = 2, nrow = 2)
print(data.mat)

test.output <- chisq.test(data.mat)
print(test.output)


#2

p.vec <- rep(NA, 100)
for (i in 1:100){
  sample.size <- 50 #50 patients
  probA <- 0.5 #probability of disease for genotype A
  probB <- 0.5
  dis.genA <- rbinom(sample.size,1,probA)
  print(dis.genA)
  dis.genB <- rbinom(sample.size, 1, probB)
  print(dis.genB)
  data.mat <- matrix(c(table(dis.genA), table(dis.genB)), ncol = 2, nrow = 2)
  print(data.mat)
  test.output <- chisq.test(data.mat)
  p.val <- test.output$p.value
  p.vec[i] <- p.val
}

sig.level0.1 <- sum(p.vec<0.1) # how many of the p values are under significance level 0.1, in those cases null hypothesis is rejected
sig.level0.05 <- sum(p.vec<0.05)
print(sig.level0.1)
print(sig.level0.05)


#3

p.vec <- rep(NA, 100)
for (i in 1:100){
  sample.size <- 50 #50 patients
  probA <- 0.4 #probability of disease for genotype A
  probB <- 0.6
  dis.genA <- rbinom(sample.size,1,probA)
  print(dis.genA)
  dis.genB <- rbinom(sample.size, 1, probB)
  print(dis.genB)
  data.mat <- matrix(c(table(dis.genA), table(dis.genB)), ncol = 2, nrow = 2)
  print(data.mat)
  test.output <- chisq.test(data.mat)
  p.val <- test.output$p.value
  p.vec[i] <- p.val
}

sig.level0.1 <- sum(p.vec<0.1) # how many of the p values are under significance level 0.1, in those cases null hypothesis is rejected
sig.level0.05 <- sum(p.vec<0.05)
print(sig.level0.1) #in about half of the cases the null hypothesis is not rejected, which is a wrong conclusion
print(sig.level0.05)


#4

p.vec <- rep(NA, 100)
for (i in 1:100){
  sample.size <- 50 #50 patients
  probA <- 0.2 #probability of disease for genotype A
  probB <- 0.8
  dis.genA <- rbinom(sample.size,1,probA)
  print(dis.genA)
  dis.genB <- rbinom(sample.size, 1, probB)
  print(dis.genB)
  data.mat <- matrix(c(table(dis.genA), table(dis.genB)), ncol = 2, nrow = 2)
  print(data.mat)
  test.output <- chisq.test(data.mat)
  p.val <- test.output$p.value
  p.vec[i] <- p.val
}

sig.level0.1 <- sum(p.vec<0.1) # how many of the p values are under significance level 0.1, in those cases null hypothesis is rejected
sig.level0.05 <- sum(p.vec<0.05)
print(sig.level0.1) #in 100 % cases we rejected the hypothesis, which is what we expected, because the hypothesis of independence we know is false
print(sig.level0.05)

