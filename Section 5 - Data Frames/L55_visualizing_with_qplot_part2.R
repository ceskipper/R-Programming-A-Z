#------------------- Visualizing with qplot: Part 2 - S5, L55

#1. Shapes
qplot(data=merged, x=Internet.users, y=Birth.rate,
      size=I(2), colour=Region, shape=I(17))             #triangles

qplot(data=merged, x=Internet.users, y=Birth.rate,
      size=I(2), colour=Region, shape=I(23))             #diamonds     

qplot(data=merged, x=Internet.users, y=Birth.rate,
      size=I(2), colour=Region, shape=I(2))             #hollow triangles

#2. Transparency
qplot(data=merged, x=Internet.users, y=Birth.rate,
      size=I(2), colour=Region, shape=I(19),
      alpha=I(0.6))

#3. Title
qplot(data=merged, x=Internet.users, y=Birth.rate,
      size=I(2), colour=Region, shape=I(19),
      alpha=I(0.6),
      main="Birth Rate vs Internet Users")





