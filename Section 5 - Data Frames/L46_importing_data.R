#Section 5: Data Frames

#Data Frames - can have any mix of data types included in tables

#Columns in DFs have names, but rows DO NOT




#Importing data

#Method 1: Select the File Manually
stats <- read.csv(file.choose())

#Method 2: Set Working Directory (WD) and Read Data
getwd()   #tells you your current WD
setwd("~/R Programming A-Z/Section 5 - Data Frames/SuperDataScience files")
rm(stats)

stats <- read.csv("P2-Demographic-Data.csv")
stats



