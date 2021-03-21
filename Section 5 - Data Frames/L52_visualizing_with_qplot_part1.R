#----------------------------- Visualizing with qplot: Part 1 - S5, L52


qplot(data=stats, x=Internet.users, y=Birth.rate,
      size=I(4), colour=I("red"))                 #use I() to map the aesthetic to ALL data

qplot(data=stats, x=Internet.users, y=Birth.rate,
      size=I(2), colour=Income.Group)             #do not need I() if you're mapping by a column/category
