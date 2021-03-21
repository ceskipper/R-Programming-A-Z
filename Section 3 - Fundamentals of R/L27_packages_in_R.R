#Packages in R - S3, L27

#Packages are collections of R functions, data, and compiled code in a well-defined format.
#The directory where packages are stored is called the library
#Source: http://www.statmethods.net/

#installing from CRAN means installing a package from https://cran.r-project.org
#CRAN is a network of ftp and web serves around the world that store identical up-to-date, versions of code and documentation for R. 


#install ggplot2
install.packages("ggplot2")

#you must activate [use library() function] a package in your library to be able to use the functions within that package
library(ggplot2)

qplot(data=diamonds, carat, price,
      colour=clarity, facets=.~clarity)
