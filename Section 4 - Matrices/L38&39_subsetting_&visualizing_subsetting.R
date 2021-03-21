#---------- Subsetting - S4, L38 ----------

x <- c("a", "b", "c", "d", "e")
x

x[c(1,5)]   #you're actually subsetting the data!
x[1]

#subsetting matrices
Games
Games[1:3, 6:10]    #subset first three rows and columns 6-10

#compare first and last players
Games[c(1,10), ]

Games[,c("2008", "2009")]   #subset of 2008 and 2009

Games[1,]   #stats for just KobeBryant; output is a vector - not a matrix
is.matrix(Games[1,])
is.vector(Games[1,])
#R is trying to guess what you want...which is why it's outputting a vector each time

Games[1, , drop=F]   #drop will drop unnecessary dimensions; in this case, R will no longer drop the row name



#---------- Visualizing Subsetting - S4, L39 ----------

matplot(t(MinutesPlayed/Games), type="b", pch=15:18, col=c(1:4,6))
legend("bottomleft", "inset=0.01", legend=Players, col=c(1:4,6), pch=15:18, horiz=F)

Data <- MinutesPlayed[1:3,]
Data
matplot(t(Data), type="b", pch=15:18, col=c(1:4,6))
legend("bottomleft", "inset=0.01", legend=Players[1:3], col=c(1:4,6), pch=15:18, horiz=F)

#only KobeBryant
Data <- MinutesPlayed[1,, drop=F]
Data
matplot(t(Data), type="b", pch=15:18, col=c(1:4,6))
legend("bottomleft", "inset=0.01", legend=Players[1], col=c(1:4,6), pch=15:18, horiz=F)
