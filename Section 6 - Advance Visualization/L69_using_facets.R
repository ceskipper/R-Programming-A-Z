#---------------- Using Facets - S6, L69

v <- ggplot(data=movies, aes(x=BudgetMillions))
v + geom_histogram(binwdith=10)
v + geom_histogram(binwdith=10, aes(fill=Genre),
                   colour="Black")


#Facets: allow you to create lots of charts
#histogram for each genre

#uniform scales:
v + geom_histogram(binwdith=10, aes(fill=Genre),
                   colour="Black") + 
  facet_grid(Genre~.)                   #rows=Genre
  #facet_grid(row~column)
  #notice that the Comedy genre takes up the entire scale
  #all scales are uniform, unless specified

#different scales:
v + geom_histogram(binwdith=10, aes(fill=Genre),
                   colour="Black") + 
  facet_grid(Genre~., scales="free")    #scales=free removes scale uniformity



#Scatterplots:
w <- ggplot(data=movies, aes(x=CriticRating, y=AudienceRating,
                             colour=Genre))
w + geom_point(size=3)

#scatterplot facets:
w + geom_point(size=3) +
  facet_grid(Genre~.)

w + geom_point(size=3) + 
  facet_grid(.~Year)

w + geom_point(size=3) + 
  facet_grid(Genre~Year)

w + geom_point(size=3) + 
  geom_smooth() + 
  facet_grid(Genre~Year)

w + geom_point(aes(size=BudgetMillions)) + 
  geom_smooth() + 
  facet_grid(Genre~Year)
#>>> Chart #1 (but stil will improve)
#the geom_smooth is stretching the axes; we need to zoom in (see L70)
