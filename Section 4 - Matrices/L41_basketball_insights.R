#Basketball insights - S4, L41

#use parameters to make your function flexible
#3 column legend
myplot <- function(data, rows=1:10){
  Data <- data[rows,, drop=F]     #data becomes the data file
  Data
  matplot(t(Data), type="b", pch=15:18, col=c(1:4,6))
  legend("bottomleft", inset=0.005, legend=Players[rows], 
         col=c(1:4,6), pch=15:18, horiz=F, 
         text.width=0.8, ncol=3, cex=0.75)
}
#box.lty=0 removes the legend border
#rows becomes a variable - applies everywhere the word "rows" is within the function
#data becomes the data file
#rows=1:10 make the default rows 1-10 unless otherwise specified
myplot(Salary, 1:2)

myplot(Games)
head(Games)

#2 column legend
myplot <- function(data, rows=1:10){
  Data <- data[rows,, drop=F]     #data becomes the data file
  Data
  matplot(t(Data), type="b", pch=15:18, col=c(1:4,6))
  legend("bottomleft", inset=0.005, legend=Players[rows], 
         col=c(1:4,6), pch=15:18, horiz=F, 
         text.width=0.65, ncol=2, cex=0.65)
}

#Salary
myplot(Salary)
myplot(Salary / Games)
myplot(Salary / FieldGoals)

#In-Game Metrics
myplot(MinutesPlayed)
myplot(Points)

#In-Game Metrics Normalized
myplot(FieldGoals / Games)
myplot(FieldGoals / FieldGoalAttempts)
myplot(FieldGoalAttempts / Games)
myplot(Points / Games)

#Interesting Observations
myplot(MinutesPlayed / Games)
myplot(Games)

#Time is valuable
myplot(FieldGoals / MinutesPlayed)

#Player style
myplot(Points / FieldGoals)
