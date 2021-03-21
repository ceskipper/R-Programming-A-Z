#The "For" Loop - S2, L12

counter<-1
while(counter<12){
  print(counter)
  counter<-counter+1
}

#for(iterations of the loop){body of the loop}
#print variable i 5 times
for(i in 1:5){
  print("Hello R")
}
#1:5 represents a vector (sequence) of numbers

#print variable i 6 times
for(i in 5:10){
  print("Hello R")
}