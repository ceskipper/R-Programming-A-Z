#---------------- Plotting with Layers - S6, L63

p <- ggplot(data=movies, aes(x=CriticRating, y=AudienceRating, 
                        colour=Genre, size=BudgetMillions))

#point
p + geom_point()

#lines
p + geom_line()

#multiple layers
p + geom_point() + geom_line()
p + geom_line() + geom_point()   #points on top of lines

