Kong = read.table("kong_mutation_data.txt", header = TRUE)
plot(Kong$Mutations,Kong$MatAge, xlab = 'x', ylab = 'y')
curve(x*4+5, 0, 100, add = TRUE)



