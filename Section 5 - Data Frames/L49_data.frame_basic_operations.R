#------------------- Basic Operations in a Data Frame - S5, L49

#Subsetting
stats[1:10,]      #subsetting first 10 rows, all columns
stats[3:9,]       #subsetting rows 3-9, all columns
stats[c(4,100),]  #subsetting rows 4 and 100, all columns


#Remember how the [] brackets work
stats[1,]
is.data.frame(stats[1,])   #no need for drop=F when extracting ROWS
                           #in a matrix if you extract one row, it turns it into a vector
                           #in a data frame if you extract one row, it remains a DF
stats[,1]
is.data.frame(stats[,1])
                           #in a data frame if you extract one column, it remains a DF
stats[,1,drop=F]
is.data.frame(stats[,1,drop=F])   #you DO need drop=F when extracting COLUMNS


#Multiply columns
head(stats)
stats$Birth.rate * stats$Internet.users
stats$Birth.rate + stats$Internet.users


#Add a column
head(stats)
stats$MyCalc <- stats$Birth.rate * stats$Internet.users


#Test of Knowledge
stats$xyz <- 1:5     #vector 1-5 will be recycled since you have well over 5 rows in this DF
                     #vector must be a multiple of the total row number, otherwise you'll get an error
head(stats, n=15)


#Remove a column
head(stats)
stats$MyCalc <- NULL
stats$xyz <- NULL
