#1 generate a random sample of 3 eels

sample(1:3,3) #generate a random sample of 3 eels

#2 generate 10 random samples of 3 eels
for (i in 1:10) {
  print(sample(1:3,3, replace = TRUE))
}

#3 make a histogram of the frequencies of three eels in a 30 eel sample
hist(sample(1:3,30, replace = TRUE))

#4 make a histogram of the frequencies of three eels in a 300 eel sample
hist(sample(1:3,300, replace = TRUE))

