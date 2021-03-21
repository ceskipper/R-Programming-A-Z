#---------------- Aesthetics - S6, L62

#Aesthetics - how your data maps to what you want to see

library(ggplot2)

#last time we used qplot() - q stands for quick plot
#ggplot is the better, more in-depth/customizable option 
ggplot(data=movies, aes(x=CriticRating, y=AudienceRating))   #if you run just this, you will get an empty plot


#add geometry
ggplot(data=movies, aes(x=CriticRating, y=AudienceRating)) + 
  geom_point()


#add color
ggplot(data=movies, aes(x=CriticRating, y=AudienceRating, colour=Genre)) + 
  geom_point()


#add size
ggplot(data=movies, aes(x=CriticRating, y=AudienceRating, 
                        colour=Genre, size=Genre)) + geom_point()
                        #Warning message:
                        #Using size for a discrete variable is not advised.


#add size - better way
ggplot(data=movies, aes(x=CriticRating, y=AudienceRating, 
                        colour=Genre, size=BudgetMillions)) + 
  geom_point()
#>>> This is #1 (but we will further improve it later)

