##What is a Vector? - S3, L21

#Vector = a sequence of data elements of the SAME basic type (and ordered set); like a horizontal bookshelf with a lot of sections
#indexations start at 1

#character vector - would have characters in it, with ""



##Let's create some vectors - S3, L22

MyFirstVector <- c(3, 45, 56, 732)           #c() = function to combine numbers/elements
MyFirstVector
is.numeric(MyFirstVector)                    #if this function returns TRUE, then the object (MyFirstVector) is numeric
is.integer(MyFirstVector)                    #returns FALSE because R stores numbers as double by default. 
is.double(MyFirstVector)

V2 <- c(3L, 12L, 243L, 0L)                   #To make R store a number as an integer, you must add L after it!!
is.numeric(V2)
is.integer(V2)
is.double(V2)

V3 <- c("a", "B23", "Hello")
V3
is.character(V3)
is.numeric(V3)

#Remember: you cannot mix data types within a vector!

V3 <- c("a", "B23", "Hello", 7)             #number 7 will be converted into a character: "7" in the printout
V3
is.character(V3)
is.numeric(V3)

seq()    #sequence - like ":"
rep()    #replicate

seq(1,15)
1:15

seq(1,15,2)   #where the last number (2 in this case) is the step or number by which you want to count between 1 and 15
z <- seq(1,15,4)
z


rep(3, 50)   #replicates the number 3 50 times
d <- rep(3, 50)
d

rep("a", 5)

x <- c(80,20)      #creates vector x as the numbers 80 and 20
y <- rep(x, 10)    #replicates vector x as new vector y
y


#ADVANCED:
M1 <- rbind(c(100,200,300,400,500), rep(10,5))   #binds row 1 c(100, 200, 300, 400, 500) and row 2 (replicates 10 5 times)
M2 <- rbind(1:5, rep(10,5))                      #binds row 1 c(1:5) and row 2 (replicates 10 5 times)
