#---- Colnames(), Rownames() - S4, L35 ----

#Named Vectors
Charlie <- 1:5
Charlie

names(Charlie)   #returns NULL because there are no names right now

#give names
names(Charlie) <- c("a", "b", "c", "d", "e")
Charlie   #now a named vector
Charlie["d"]   #to access the number 4
names(Charlie)

#clear names
names(Charlie) <- NULL
Charlie


#---------------

#Naming Matrix Dimensions 1
temp.vec <- rep(c("a", "B", "zZ"), 3)
temp.vec

temp.vec <- rep(c("a", "B", "zZ"), each=3)    #each element is replicated X number of times
temp.vec                


Bravo <- matrix(temp.vec, 3, 3)
Bravo


rownames(Bravo) <- c("How", "are", "you?")
Bravo

colnames(Bravo) <- c("X", "Y", "Z")
Bravo

#put a 0 in the middle
Bravo["are", "Y"] <- 0
Bravo

rownames(Bravo)
colnames(Bravo)

#clear rownames
rownames(Bravo) <- NULL
Bravo
