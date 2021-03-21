#------------------------------ Introduction to qplot - S5, L51

#qplot is inside the ggplot2 package

install.packages("ggplot2")          #package written by Hadley Wickham
library(ggplot2)

?qplot
qplot(data=stats, x=Internet.users)
qplot(data=stats, x=Income.Group, y=Birth.rate)
qplot(data=stats, x=Income.Group, y=Birth.rate, size=I(3), 
      colour=I("goldenrod"))                               #include I for aesthetics!!
qplot(data=stats, x=Income.Group, y=Birth.rate, geom="boxplot")
