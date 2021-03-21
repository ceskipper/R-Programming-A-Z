#------------------------Filtering Data Frames - S5, L50

#filtering is more about rows (not columns)
head(stats)
stats$Internet.users < 2     #how many countries have <2% internet users?
                             #returns a vector
filter <- stats$Internet.users < 2
stats[filter,]               #stats will run through the data and filter for the object, filter, we made
                             #will only return TRUE values for countries w/ <2% internet users


stats[stats$Birth.rate > 40,]  #all countries with birth rate >40 

stats[stats$Birth.rate > 40 & stats$Internet.users < 2,]   #both conditions must be TRUE


#filter by categorical variable
stats[stats$Income.Group == "High income", ]
levels(stats$Income.Group)    #use levels to check the factors for Income.Group


#filter by a specific country, in this case - Malta
stats[stats$Country.Name == "Malta",]

