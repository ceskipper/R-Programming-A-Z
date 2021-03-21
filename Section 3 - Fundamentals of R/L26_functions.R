#Functions in R - S3, L26

x <- c("a", "b", "c")

#?   the question mark before a function will open the R Help file for that function

#functions we've used so far
?rnorm()
rnorm(n=5, mean=10, sd=8) #OR
rnorm(5, 10, 8)           #you don't need to include the parameter names, but you can

c()
seq()     #like a colon, but with more flexbility (ex: you can specify length out, along with)
rep(x, each=5)

print()

is.numeric()
is.interger()
is.double()
is.character()

?typeof()

A <- seq(from=10, to=20, along.with=x)
A
B <- sqrt(A)
B

paste()

