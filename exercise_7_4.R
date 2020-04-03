#1 draw a random number between 0 and 1, and if it is less than 0.5, print "heads" or otherwise "tails"

decider <- runif(1)

if (decider < 0.5){
  print('heads')
} else {
  print('tails')
}

#2 

numpatients <- 500 #set number of patients
prev <- 0.1 #set disease prevailance
status_vector <- rep(NA, numpatients)
for (i in 1:numpatients){
  decider <- runif(1) #generate number between 0 and 1
  if (decider<prev){ #person is sick
    status_vector[i] <- 'sick'
  } else {
      status_vector[i] <- 'healthy'
    }
}
print(status_vector)


#3 there is a bug in this code. 

FPR <- 0.01 #set false positive rate
FNR <- 0.1 #set false negative rate
#pre-allocate vector of test results
test.results <- rep('blah', numpatients)
for (j in 1:numpatients){
  decider <- runif(1)
  if (status_vector[j] == 'sick'){
    if(decider< FNR){ #false negative result
      test.results[j] == 'false negative'
    } else{ #true positive result
      test.results[j] <- 'true positive'}
  } else {
    if(decider< FPR){ #false positive result
      test.results[j] == 'false positive'
    } else{ #true negative result
      test.results[j] <- 'true negative'
      }
  }
}
print(test.results)

