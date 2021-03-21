#Using the [] Brackets - S3, L23

#Creating vectors
x <- c(1,123,534,13,4)   #combine
y <- seq(201,250,11)     #sequence
z <- rep("Hi!", 3)       #replicate

#This lesson: learn how to access individual elements of vectors using brackets

w <- c("a", "b", "c", "d", "e")
w

w[1]   #access first element in vector w ("a" in this case)
w[2]
w[3]
w[4]
w[5]
w[-1]  #access all elements except the first one
v <- w[-3]  #create new vector, v, with all elements of vector w except the third ("c")
v

w[1:3]      #returns elements 1-3 of vector w
w[3:5]      #returns elements 3-5 of vector w
w[c(1,3,5)] #returns elements 1, 3, and 5 of vector w
w[c(-2,-4)] #excludes elements 2 and 4 of vector w

