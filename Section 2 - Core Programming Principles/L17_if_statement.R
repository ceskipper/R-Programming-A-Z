#The "If" Statement - S2, L13

# ---- -2 ---- -1 ---- 0 ---- 1 ---- 2 ----

#rnorm() generates a set of random numbers according to the normal distribution
#included (1) because we want 1 number generated
x<-rnorm(1)

#use if statement to determine where the number will fall
#the if statement allows us to isolate a block of code and execute it only when a certain condition is met
#only runs once
#if(logical statement){action statement}
x<-rnorm(1)
if(x>1){
  answer<-"Greater than 1"
}

#how to remove variables in R
rm(answer)


rm(answer)
x<-rnorm(1)
if(x>1){
  answer<-"Greater than 1"
}


#else statement - in case if statement doesn't work
rm(answer)
x<-rnorm(1)
if(x>1){
  answer<-"Greater than 1"
} else{
  answer<-"Less or equal to 1"
}


#check three statements
#nested if/else statement
rm(answer)
x<-rnorm(1)
if(x>1){
  answer<-"Greater than 1"
} else{
 
    if(x>=-1){
      answer<-"Between -1 and 1"
    } else{
      answer<-"Less than -1"
    }
}


#much better to chain statements!

#chain statements
rm(answer)
x<-rnorm(1)
if(x>1){
  answer<-"Greater than 1"
} else if(x>=-1){
  answer<-"Between -1 and 1"
} else{
  answer<-"Less than -1"
}
