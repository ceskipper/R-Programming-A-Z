#---------------- Overriding Aesthetics - S6, L64

q <- ggplot(data=movies, aes(x=CriticRating, y=AudienceRating, 
                             colour=Genre, size=BudgetMillions))

#add geom layer
q + geom_point()


#overriding aesthetics - example 1
q + geom_point(aes(size=CriticRating))


#overriding aesthetics - example 2
q + geom_point(aes(colour=BudgetMillions))


#q remains the same
q + geom_point()


#override x and y - example 3
q + geom_point(aes(x=BudgetMillions))   #doesn't change the x-axis label
q + geom_point(aes(x=BudgetMillions)) + 
  xlab("Budget Millions $$$")


#reduce line size - example 4
q + geom_line(size=1) + geom_point()   
        #Mapping vs. Setting: aes() is mapping; 
         # assigning size=1 is just setting 
         # so you don't need aes()
