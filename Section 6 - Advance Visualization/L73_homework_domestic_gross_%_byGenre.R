#---------------- Homework: Movie Domestic % Gross - S6, L73

#recreate: boxplot with jitter in background
#Gross%US = y; Genre = x
#size=Budget $M; colour = Studio (mapped)
#plot title: Domestic Gross % by Genre
#font = Comic Sans MS
#axes labels = Blue

movies2 <- read.csv("Section6-Homework-Data.csv")
colnames(movies2)
colnames(movies2) <- c("DayofWeek", "Director", "Genre", "MovieTitle", "ReleaseDate", "Studio", "AdjustedGrossMillions", "BudgetMillions", "GrossMillions", "IMDbRating", "MovieLensRating", "OverseasMillions", "Overseas%", "ProfitMillions", "Profit%", "RuntimeMin", "USMillions", "GrossPercentUS")
str(movies2)


#filter by Genre and then Studio
filt <- (movies2$Genre == "action") | (movies2$Genre == "adventure") | (movies2$Genre == "animation") | (movies2$Genre == "comedy") | (movies2$Genre ==  "drama")
filt2 <- (movies2$Studio == "Buena Vista Studios") | (movies2$Studio == "Fox") | (movies2$Studio == "Paramount Pictures") | (movies2$Studio == "Sony") | (movies2$Studio ==  "Universal") | (movies2$Studio == "WB")
#OR
#filt2 <- movies2$Studio %in% c("Buena Vista Studios", "Fox", "Paramount Pictures", "Sony", "Universal", "WB")


#combine filters into DF
movies3 <- movies2[filt & filt2,]
str(movies3)




a <- ggplot(data=movies3, aes(x=Genre, y=GrossPercentUS))
b <- a + geom_jitter(aes(colour=Studio, size=BudgetMillions)) + 
  geom_boxplot(size=0.5, alpha=0.7, outlier.colour = NA, colour="Black")
b

#theme
c <- b + 
  xlab("Genre") + 
  ylab("Gross % US") +
  ggtitle("Domestic Gross % by Genre") +
  theme(axis.title.x = element_text(colour="Blue", size=15),
        axis.title.y = element_text(colour="Blue", size=15),
        axis.text.x = element_text(size=10),
        axis.text.y = element_text(size=10),
        
        legend.title = element_text(size=10),
        legend.text = element_text(size=8),
        
        plot.title = element_text(size=20, hjust=0.5),
        
        text = element_text(family="Comic Sans MS")) 
c

#Final touch: change legend title for dot size
c$labels$size <- "Budget $M"
c
