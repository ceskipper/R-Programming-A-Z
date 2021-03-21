#Creating Your First Function - S4 L40


myplot <- function(){
  Data <- MinutesPlayed[2:3,, drop=F]
  Data
  matplot(t(Data), type="b", pch=15:18, col=c(1:4,6))
  legend("bottomleft", "inset=0.01", legend=Players[2:3], col=c(1:4,6), pch=15:18, horiz=F)
}

myplot()

#use parameters to make your function flexible
myplot <- function(data, rows=1:10){
  Data <- data[rows,, drop=F]     #data becomes the data file
  Data
  matplot(t(Data), type="b", pch=15:18, col=c(1:4,6))
  legend("bottomleft", "inset=0.01", legend=Players[rows], col=c(1:4,6), pch=15:18, horiz=F)
}
#rows becomes a variable - applies everywhere the word "rows" is within the function
#data becomes the data file
#rows=1:10 make the default rows 1-10 unless otherwise specified
myplot(Salary, 1:2)


