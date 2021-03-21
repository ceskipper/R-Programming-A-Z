#------------------- Merging Data Frames - S5, L54

head(stats)
head(mydf)



merged <- merge(stats, mydf, by.x  ="Country.Code", by.y = "Code")
head(merged)
merged$Country <- NULL   #remove duplicate column

