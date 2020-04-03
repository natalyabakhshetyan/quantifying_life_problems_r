#1

Kong = read.table("kong_mutation_data.txt", header = TRUE)
x.data <- Kong$PatAge
y.data <- Kong$Mutations
myfit <- lm(y.data ~ x.data) #best fil line calculation
plot(x.data,y.data, xlab = 'Paternal Age', ylab = 'Mutations')
abline(myfit) # best fit line generation
summary(myfit)

#2

Kong = read.table("kong_mutation_data.txt", header = TRUE)
x.data <- Kong$MatAge
y.data <- Kong$Mutations
myfit <- lm(y.data ~ x.data) #best fil line calculation
plot(x.data,y.data, xlab = 'Maternal Age', ylab = 'Mutations')
abline(myfit) # best fit line generation
summary(myfit)

# look at R squared in summary, it is the correlation value
#thus paternal age is more correlated to the number of mutations than maternal age
