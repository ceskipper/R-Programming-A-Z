#Vectorized Operations - S3, L24

#combine two vectors

v1 <- c(50,34,111,7,24,631,20,4,7,21)
v1

v2 <- c(100,2,56,12,0,65,93,10,244,1)
v2

#vectors can be within functions, and they can be returned from functions

#recycling of vectors - this will occur if you try to combine 2 or more vectors that are not the same length. R will recycle the elements from the shorter vector to match the length of the longer vector.



#The Power of Vectorized Options - S3, L25

x <-rnorm(5)

#R-specific programming loop
for(i in x){
  print(i)
}

print(x[1])    #print only the first value
print(x[2])    #print only the second value

#conventional programming loops
for(j in 1:5){
  print(x[j])
}               #where j is an index for the values 1-5 within x


#---------------- 2nd Part for L25

N <- 100
a <- rnorm(N)
b <- rnorm(N)

###compare running a vectorized operation vs. devectorized (conventional) operation approach

#Vectorized approach
c <- a * b

#De-vectorized approach (conventional programming approach; slower than vectorized approach!)
d <- rep(NA,N)
for(i in 1:N){
  d[i] <- a[i] * b[i]
}


