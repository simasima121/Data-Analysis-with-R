reddit <- read.csv('reddit.csv')

str(reddit)

# Find details for people in each table of the data
table(reddit$employment.status)
summary(reddit)

# Understand the levels of a variable
levels(reddit$age.range)

# Plotting the graph
library(ggplot2)
qplot(data = reddit, x = age.range) 
qplot(data = reddit, x = income.range) 

# Setting Levels of Ordered Factors Solution, both solutions have same result
reddit$age.range <- ordered(reddit$age.range, levels = c("Under 18", "18-24", "25-34","35-44","45-54","55-64","65 or Above"))
qplot(data = reddit, x = age.range) 

reddit$age.range <- factor(reddit$age.range, levels = c("Under 18", "18-24", "25-34","35-44","45-54","55-64","65 or Above"), ordered = T)
qplot(data = reddit, x = age.range) 


