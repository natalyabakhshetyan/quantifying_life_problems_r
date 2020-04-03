#1 generate a random number of mutants out a sample of 20 people, mutation rate = 3%
rbinom(1,20,0.03)

#2 generate 100 random numbers of mutants from samples of 20 people, make a histogram.
# calculate actual probability of getting 3 mutants out of 20 and compare
hist(rbinom(100,20,0.03))
dbinom(3, 20, 0.03)

#3 generate 100 random numbers of mutants from samples of 200 people, make a histogram.
# calculate actual probability of getting 30 mutants out of 200 and compare
hist(rbinom(100,200,0.03))
dbinom(30, 200, 0.03)

