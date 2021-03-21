#Using the $ sign - S5, L48

#Columns in DFs have names, but rows DO NOT - rows have numbers!

# $ sign specifies a column

stats
head(stats)
stats[3,3]
stats[3, "Birth.rate"]
stats$Internet.users     #will return/extract this entire column as a vector
stats$Internet.users[2]  #row 2 in Internet.users column
stats[, "Internet.users"]  #equivalent to stats$Internet.users

str(stats)
#use levels() to find the factors
levels(stats$Income.Group)
