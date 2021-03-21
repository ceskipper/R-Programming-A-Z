#---------------- What is a Factor? - S6, L61

getwd()
setwd("~/R Programming A-Z/Section 6 - Advance Visualization/SuperDataScience files")
getwd()

movies <- read.csv("P2-Movie-Ratings.csv")
head(movies)
colnames(movies) <- c("Film", "Genre", "CriticRating", "AudienceRating", "BudgetMillions", "Year")
head(movies)
tail(movies)
str(movies)        #check the variable (column) types (factor vs integer)

#What is a Factor?
# Factors are categorical variables; factors are the way R works with categorical variables
# levels and numbers; R looks through your column finds all of the different words that exist and assigns each word a number

summary(movies)
#we want Year to be a categorical variable aka factor


#How to convert a non-factor numeric variable --> factor
factor(movies$Year)                  #convert into factor
movies$Year <- factor(movies$Year)   #assign column in the dataset the new factored vector
summary(movies)                      #Year is now a factor
str(movies)                          #confirm that Year is now a factor



