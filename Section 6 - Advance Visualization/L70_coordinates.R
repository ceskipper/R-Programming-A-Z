#---------------- Coordinates - S6, L70


#limits
#zooming in & out

w + geom_point(aes(size=BudgetMillions)) + 
  geom_smooth() + 
  facet_grid(Genre~Year)

m <- ggplot(data=movies, aes(x=CriticRating, y=AudienceRating,
                             size=BudgetMillions,
                             colour=Genre))
m + geom_point()

#zoom in on top right quadrant
m + geom_point() +
  xlim(50,100) +
  ylim(50,100)


#^this won't always work well
n <- ggplot(data=movies, aes(x=BudgetMillions))
n + geom_histogram(binwidth=10, aes(fill=Genre),
                   colour="Black")
#cut if off up to 50
n + geom_histogram(binwidth=10, aes(fill=Genre),
                   colour="Black") +
  ylim(0,50)   #this cuts off any data that goes to 50 or beyond


#instead of this^, Zoom in using coord_cartesian():
n + geom_histogram(binwidth=10, aes(fill=Genre),
                   colour="Black") +
  coord_cartesian(ylim=c(0,50))


#back to improving Chart 1; zoom in 
w + geom_point(aes(size=BudgetMillions)) + 
  geom_smooth() + 
  facet_grid(Genre~Year) +
  coord_cartesian(ylim=c(0,100))
  #>>> Chart $1