#---------------- Statistical Transformations - S6, L68

library(ggplot2)

?geom_smooth()

u <- ggplot(data=movies, aes(x=CriticRating, y=AudienceRating,
                             colour=Genre))
u + geom_point() + geom_smooth()
u + geom_point() + geom_smooth(fill=NA)


#Boxplots
u <- ggplot(data=movies, aes(x=Genre, y=AudienceRating, 
                             colour=Genre))
u + geom_boxplot()
u + geom_boxplot(size=1.2)
#see bonus tutorial for boxplots
u + geom_boxplot(size=1.2) + geom_point()
#tip / hack:
u + geom_boxplot(size=1.2) + geom_jitter()
      #geom_jitter() puts the dots on the boxplots to help visualize the data
#another way:
u + geom_jitter() + geom_boxplot(size=1.2)
      #dots behind the boxplots
#another example:
u + geom_jitter() + geom_boxplot(size=1.2, alpha=0.5)
      #alpha controls transparency (0-1)
      #boxplots are 50% transparent
#>>> Chart #6


#Challenge
t <- ggplot(data=movies, aes(x=Genre, y=CriticRating, 
                             colour=Genre))
t + geom_jitter() + geom_boxplot(size=1.2, alpha=0.5)
