#---------------- Perfecting by Adding Themes - S6, L71


#Themes: includes all non-data ink
#ex: position of labels and legends, color of background, text


#improving s (Chart #3) from L66 Histograms & Density Charts
o <- ggplot(data=movies, aes(x=BudgetMillions))
h <- o + geom_histogram(binwidth=10, aes(fill=Genre), colour="Black")
h


#axes labels
h + 
  xlab("Money Axis") + 
  ylab("Number of Movies")


#label formatting
h + 
  xlab("Money Axis") + 
  ylab("Number of Movies") +
  theme(axis.title.x = element_text(colour="DarkGreen", size=15),
        axis.title.y = element_text(colour="Red", size=15))


#tick mark formatting
h + 
  xlab("Money Axis") + 
  ylab("Number of Movies") +
  theme(axis.title.x = element_text(colour="DarkGreen", size=15),
        axis.title.y = element_text(colour="Red", size=15),
        axis.text.x = element_text(size=10),
        axis.text.y = element_text(size=10))

?theme()


#legend formatting
h + 
  xlab("Money Axis") + 
  ylab("Number of Movies") +
  theme(axis.title.x = element_text(colour="DarkGreen", size=15),
        axis.title.y = element_text(colour="Red", size=15),
        axis.text.x = element_text(size=10),
        axis.text.y = element_text(size=10),
        
        legend.title = element_text(size=15),
        legend.text = element_text(size=10),
        legend.position = c(1,1),   #can pass 0 (start of axis) or 1 (end of axis)
        legend.justification = c(1.05,1.05))  #anchors the legend      


#import fonts
install.packages("extrafont")
library(extrafont)
font_import("C:/Windows/Fonts")
loadfonts(device = "win")


#plot title
h + 
  xlab("Money Axis") + 
  ylab("Number of Movies") +
  ggtitle("Movie Budget Distribution") +
  theme(axis.title.x = element_text(colour="DarkGreen", size=15),
        axis.title.y = element_text(colour="Red", size=15),
        axis.text.x = element_text(size=10),
        axis.text.y = element_text(size=10),
        
        legend.title = element_text(size=15),
        legend.text = element_text(size=10),
        legend.position = c(1,1),   #can pass 0 (start of axis) or 1 (end of axis)
        legend.justification = c(1.05,1.05),  #anchors the legend
        
        plot.title = element_text(colour="DarkBlue", 
                                  size=20, 
                                  family="Courier New",
                                  hjust=0.5))


