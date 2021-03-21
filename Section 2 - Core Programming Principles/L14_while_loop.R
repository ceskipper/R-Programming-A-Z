#The "While" Loop - S2, L10

#while(logical expression){body of the loop}
#R will check whether the logical expression is true. If true, then R will execute the body of the loop. R will repeat this loop until the logical expression becomes false.


while(abc){
  xyz
}

while(FALSE){
  print("Hello")
}

while(TRUE){
  print("Hello")
}
#Infinite loop - the computer will constantly print the word Hello since the logical expression was true.


#counter loop

counter<-1
while(counter<12){
  print(counter)
  counter<-counter+1
}
#computer will print the counter number until it reaches 12
