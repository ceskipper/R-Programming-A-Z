#---------------- Starting Layer Tips - S6, L67


t <- ggplot(data=movies, aes(x=AudienceRating))
t + geom_histogram(binwidth=10,
                   fill="White", colour="Blue")   
                   #fill and border colors are set (not mapped)


#another way to achieve this^ plot (faster to adapt)
t <- ggplot(data=movies)
t + geom_histogram(binwidth=10,
                   aes(x=AudienceRating),
                   fill="White", colour="Blue")
#>>> Chart #4



t + geom_histogram(binwidth=10,
                   aes(x=CriticRating),
                   fill="White", colour="Blue")
#>>> Chart #5


t <- ggplot()       #skeleton plot

