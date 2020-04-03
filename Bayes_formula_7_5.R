#1 link = 1 means the SNP is linked to the disease

sample.size <- 100
link <- 1
spec <- 0.8 #set specificity
sens <- 0.9 #set sensitivity
TP <- 0
FP <- 0
TN <- 0
FN <- 0

for (i in 1:sample.size){
  decider <- runif(1)
  if (link == 1){
    if (decider < sens){
      #test correctly identifies the linkage
      TP <- TP + 1 #true positive result
    } else {
      FN <- FN + 1 # false positive result
    }
  } else {
    if(decider< spec) {
      #test correctly says there is no linkage
      TN <- TN + 1 #true negative result
    } else{
      FP <- FP + 1 #false positive result
    }
  }
}
print(paste("True Positives", TP))
print(paste("True Negatives", TN))
print(paste("False Positives", FP))
print(paste("False Negatives", FN))

#2 link = 2 means SNP not linked to the disease

sample.size <- 100
link <- 0
spec <- 0.8 #set specificity
sens <- 0.9 #set sensitivity
TP <- 0
FP <- 0
TN <- 0
FN <- 0

for (i in 1:sample.size){
  decider <- runif(1)
  if (link == 1){
    if (decider < sens){
      #test correctly identifies the linkage
      TP <- TP + 1 #true positive result
    } else {
      FN <- FN + 1 # false positive result
    }
  } else {
    if(decider< spec) {
      #test correctly says there is no linkage
      TN <- TN + 1 #true negative result
    } else{
      FP <- FP + 1 #false positive result
    }
  }
}
print(paste("True Positives", TP))
print(paste("True Negatives", TN)) #this many time the test gives a correct result
print(paste("False Positives", FP)) #this many times the test give a wrong result
print(paste("False Negatives", FN))

#3
prior.prob <- 0.5 #probability of SNP linked to the disease
decider <- runif(1)
if(decider < prior.prob){
  #if random number is less than probability
  link <- 1 #SNP is linked to disease
} else{
  link <- 0 # SNP is independent of disease
}
sample.size <- 1000
spec <- 0.8 #set specificity
sens <- 0.9 #set sensitivity
TP <- 0
FP <- 0
TN <- 0
FN <- 0

for (i in 1:sample.size){
  decider <- runif(1)
  if (link == 1){
    if (decider < sens){
      #test correctly identifies the linkage
      TP <- TP + 1 #true positive result
    } else {
      FN <- FN + 1 # false positive result
    }
  } else {
    if(decider< spec) {
      #test correctly says there is no linkage
      TN <- TN + 1 #true negative result
    } else{
      FP <- FP + 1 #false positive result
    }
  }
}
PPV <- TP/(TP +FN)
print(paste("positive predictive value", PPV))

#5
prior.prob <- 0.1 #probability of SNP linked to the disease
decider <- runif(1)
if(decider < prior.prob){
  #if random number is less than probability
  link <- 1 #SNP is linked to disease
} else{
  link <- 0 # SNP is independent of disease
}
sample.size <- 1000
spec <- 0.99 #set specificity
sens <- 0.8 #set sensitivity
TP <- 0
FP <- 0
TN <- 0
FN <- 0

for (i in 1:sample.size){
  decider <- runif(1)
  if (link == 1){
    if (decider < sens){
      #test correctly identifies the linkage
      TP <- TP + 1 #true positive result
    } else {
      FN <- FN + 1 # false positive result
    }
  } else {
    if(decider< spec) {
      #test correctly says there is no linkage
      TN <- TN + 1 #true negative result
    } else{
      FP <- FP + 1 #false positive result
    }
  }
}
PPV <- TP/(TP +FN)
print(paste("positive predictive value", PPV))
