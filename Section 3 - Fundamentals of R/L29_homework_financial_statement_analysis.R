#Homework: Financial Statement Analysis - S3, L29

#Scenario: You are a data scientist working for a consulting firm. One of your colleagues from the auditing department has asked you to help them assess the financial statement of organization X.
#You have been supplied with two vectors of data: monthly revenue and monthly expenses for the financial year in question. Your task is to calculate the following financial metrics:
# profit for each month
# profit after tax for each month (the tax rate is 30%)
# profit margin for each month - equals to profit after tax divided by revenue
# good months - where the profit after tax was greater than the mean for the year
# bad months - where the profit after tax was less than the mean for the year
# the best month - where the profit after tax as max for the year
# the worst month - where the profit after tax was min for the year

#Notes
#All results need to be presented as vectors (TRUE/FALSE vectors).
#Results for dollar values need to be calculated within $0.01 precision, but need to be presented in Units of $1,000 (i.e. lk) with no decimal points.
#Results for the profit margin ratio need to be presented in units of % with no decimal points
#Note: Your colleague has warned you that it is okay for tax for any given month to be negative (in accounting terms, negative tax translates into a deferred tax asset).


#Hint #1
?round()
mean()
max()
min()

#Hint #2



#Data
revenue <- c(14574.49, 7606.46, 8611.41, 9175.41, 8058.65, 8105.44, 11496.28, 9766.09, 10305.32, 14379.96, 10713.97, 15433.50)
expenses <- c(12051.82, 5695.07, 12319.20, 12089.72, 8658.57, 840.20, 3285.73, 5821.12, 6976.93, 16618.61, 10054.37, 3803.96)



##Solutions

#profit after each month
profit <- round(revenue - expenses, digits = 2)
profit

#profit after tax for each month (the tax rate is 30%)
tax <- round(profit * 0.3, digits = 2)
tax

profit_after_tax <- profit - tax
profit_after_tax

#profit margin for each month - equals to profit after tax divided by revenue
profit_margin <- round((profit_after_tax/revenue)*100, digits = 0)
profit_margin
##OR
profit_margin2 <- round(profit_after_tax / revenue, digits = 2) * 100
profit_margin2

#mean profit after tax
mean_pat <- mean(profit_after_tax)
mean_pat

#good months - where the profit after tax was greater than the mean for the year
good_months <- profit_after_tax > mean_pat
good_months

#bad months - where the profit after tax was less than the mean for the year
bad_months <- profit_after_tax < mean_pat
bad_months
#OR
bad.months <- !good_months
bad.months

#the best month - where the profit after tax as max for the year
best_month <- max(profit_after_tax)
best_month
#December
#OR
best.month <- profit_after_tax == max(profit_after_tax)   #this approach creates a vector
best.month

#the worst month - where the profit after tax was min for the year
worst_month <- min(profit_after_tax)
print(worst_month)
#March
#OR
worst.month <- profit_after_tax == min(profit_after_tax)  #this approach creates a vector
worst.month

#convert all calculations to units of $1,000
revenue.1000 <- round(revenue/1000, digits = 0)  #also don't need to specify since the default is digits = 0
expenses.1000 <- round(expenses/1000)
profit.1000 <- round(profit/1000)
profit_after_tax.1000 <- round(profit_after_tax/1000)

#bulk print
revenue.1000
expenses.1000
profit.1000
profit_after_tax.1000
profit_margin
good_months
bad_months
best.month
worst.month


#Bonus: preview of what's coming in the next section
matrix <- rbind(
  revenue.1000, 
  expenses.1000, 
  profit.1000, 
  profit_after_tax.1000, 
  profit_margin,
  good_months, 
  bad_months, 
  best.month, 
  worst.month)
matrix
