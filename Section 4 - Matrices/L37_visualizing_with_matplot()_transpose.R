#Visualizing with matplot() - S4, L37

?matplot()           #plots by column unless otherwise specified


#transpose FieldGoals to switch rows and columns
FieldGoals
t(FieldGoals)

matplot(t(FieldGoals), type="b", pch=15:18, col=c(1:4,6))
legend("bottomleft", "inset=0.01", legend=Players, col=c(1:4,6), pch=15:18, horiz=F)
#matplot() and legend() are two separate things that just happen to be overlayed on each other; you must use the same colors and pictures (pch)!!


matplot(t(FieldGoals/FieldGoalAttempts), type="b", pch=15:18, col=c(1:4,6))
legend("bottomleft", "inset=0.01", legend=Players, col=c(1:4,6), pch=15:18, horiz=F)



