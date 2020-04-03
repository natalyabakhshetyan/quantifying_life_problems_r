data <- matrix(c(29806,8135,28,64), ncol = 2, nrow = 2)
print(data)

test.output <- chisq.test(data)
print(test.output)

# the lower the p value the safer to reject the hypothesis of independence.


# to acess the p-value individually use the following
test.output$p.value
