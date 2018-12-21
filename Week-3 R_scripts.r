#Table 5.5 from Ch 5 reading
quiz1 <- c(15,12,10,14,10,8,6,15,16,13)
quiz2 <- c(20,15,12,18,10,10,8,19,18,15)
cor(quiz1,quiz2)
plot(quiz1, quiz2)

# Scatter plot tutorial
library(SDSFoundations)
bull <-BullRiders
plot(bull$YearsPro, bull$BuckOuts12,xlab="Years Pro", ylab="Buckouts")
abline((lm(bull$BuckOuts12~bull$YearsPro)))

plot(bull$Events12, bull$BuckOuts12,xlab="Events", ylab="Buckouts")
abline((lm(bull$BuckOuts12~bull$Events12)))

# Correlation tutorial
cor(bull$YearsPro, bull$BuckOuts12)
cor(bull$Events12, bull$BuckOuts12)

# This is a trick to create a correlation matrix of any number of variables,
#the diagonal of the matrix is always 1
myvar <- c('YearsPro','Events12','BuckOuts12')
# Index of all rows, columns are myvar
cor(bull[, myvar])
