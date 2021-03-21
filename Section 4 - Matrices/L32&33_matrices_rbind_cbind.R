#----Matrices - S4, L32----

#download and install Basketball Dataset from https://www.superdatascience.com/pages/rcourse

#vector - only one row
#matrix - rows and columns; basically a table; can only have elements of the same type (like vectors)

#indexation for matrices is different than for vectors
# you must specify the row number and column number
A[3,4]   #matrixname[row #, column #]
#[1,]     row 1
#[2,]     row 2
#[,1]     column 1



#----Building Your First Matrix - S4, L33----
Salary   #Basketball Dataset from https://www.superdatascience.com/pages/rcourse
Games
MinutesPlayed

matrix()  #will bend a vector into a matrix; populates by column
rbind()   #binds vectors together as rows within a matrix
cbind()   #binds columns into vectors within a matrix


#matrix()
?matrix()
my.data <- 1:20   #creates a vector of 20 elements
my.data

A <- matrix (my.data, 4, 5)   #rows * col must equal the number of elements in your vector
A

#get to the #10 using indices
A[2,3]

B <- matrix (my.data, 4, 5, byrow=T)   #data populated into the matrix by row instead of by column
B
#now get to 10
B[2,5]


#vectors for rbind()
r1 <- c("I", "am", "happy")
r2 <- c("What", "a", "day")
r3 <- c(1,2,3)

# bind by rows
C <- rbind(r1, r2, r3)
C


#ADVANCED:
M1 <- rbind(c(100,200,300,400,500), rep(10,5))   #binds row 1 c(100, 200, 300, 400, 500) and row 2 (replicates 10 5 times)
M2 <- rbind(1:5, rep(10,5))                      #binds row 1 c(1:5) and row 2 (replicates 10 5 times)


#cbind()
c1 <- 1:5
c2 <- -1:-5
D <- cbind(c1, c2)
D
