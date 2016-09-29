getwd()
setwd('~/Desktop/Nanodegrees/Data\ Analyst/Task\ 4/Data\ Analysis\ with\ R/R\ Basics/Files/')

# Reading in a csv file
statesInfo <- read.csv('stateData.csv')

# Find any state in the region 1 using subset
# The second variable is the same except in brackt notation with dataSet[Rows, Columns]
stateSubset <- subset(statesInfo, state.region == 1)
head(stateSubset, 2)
dim(stateSubset)

stateSubsetBracket <- statesInfo[statesInfo$state.region == 1, ]
head(stateSubsetBracket, 2)
dim(stateSubsetBracket)

# Listing states with higher higherSchoolGrad rates than 55
stateHigh <- subset(statesInfo, highSchoolGrad > 55)
head(stateHigh, 5)
dim(stateHigh)
