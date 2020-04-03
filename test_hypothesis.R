# test the hypothesis that the species of eel and the habitat are independent
habitat.species <- matrix(c(127, 99, 264, 116, 67, 161), ncol = 2, nrow = 3)
print(habitat.species)

test.output <- chisq.test(habitat.species)
print(test.output)


# for significance level greater than the p-value the hypothesis cannot be rejected, 
# for significance level 0.01 and 0.001 the hypothesis is rejected
