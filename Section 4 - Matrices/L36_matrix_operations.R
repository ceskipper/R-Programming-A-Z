#Matrix Operations - S4. L36

Games                #is a matrix
rownames(Games)
colnames(Games)

Games["LeBronJames", "2012"]

FieldGoals

#find out how many field goals each player made each game; divide one matrix by another
round(FieldGoals / Games, digits = 1)

#find out how many minutes per game each player played
round(MinutesPlayed / Games)






