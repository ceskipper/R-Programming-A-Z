#Logical variables and operators S2, L9

#logical:
#TRUE T
#FALSE F

4 < 5
10 > 100
4 == 5

#logical operators:
# ==
# != (not equal to)
# <
# >
# <= (greater than or equal to)
# >= (less than or equal to)
# ! (not)
# | (or)
# &
# isTRUE(x)

result<-4<5
result
typeof(result)

result2<-!(5>1)
result2

result | result2
result&result2

isTRUE(result)
isTRUE(result2)

