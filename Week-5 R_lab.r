library(SDSFoundations)
WR <- WorldRecords

#### Reflect on the Question ####

# Every four years, track and field athletes take the world stage at the Summer Olympics.  Some of the most exciting events during each Olympics are those in which athletes push the limits of their sport, breaking their own personal best records, national records, or even world records.  We have compiled the world record times for track events like the 100m dash and record distances for field events like the shotput into a single dataset.  This dataset includes information on the person who broke the record, his/her nationality, where the record was broken, and the year it was broken.  Note that not all world records are broken during the Olympics, with many occurring in regional or national competitions.

# 1a. When fitting a model to data, what should you do first to examine the data?
  Create a scatterplot of the two variables of interest.

# 1b. When fitting a linear model, what will tell you the proportion of variance in the dependent variable that can be explained by the independent variable?
  the R-squared value
  
# 2. You will be answering one of the following questions in lab. Which of these questions might be answered using linear modeling?
  How have world record times for the men's and women's mile event changed over the years?
  
#### Analyze the Data ####
    
# Primary Research Question
  # How have the world record times for the men's and the women's mile event changed over the years?
 # 1. Create a subset of the data that contains World Record cases for the men's Mile event.
# 2. Create a subset of the data that contains World Record cases for the women's Mile event. 
# 3. Create a scatterplot for each relationship of Mile time and year: one for men and one for women.  
# 4. Confirm from these plots that a linear model is appropriate.  
# 5. Run a linear model for each event and then interpret the results. Be sure to calculate R-squared values for each model.
#### Draw Conclusions ####
  
#Subset the data
menmile <- WR[WR$Event=='Mens Mile',]
womenmile <- WR[WR$Event=='Womens Mile',] 

# Create scatterplots
plot(menmile$Year,menmile$Record,main='Mens Mile World Records',xlab='Year',ylab='World Record time (s)',pch=16)
plot(womenmile$Year,womenmile$Record,main='Womens Mile World Records',xlab='Year',ylab='World Record time (s)',pch=16)

#Run linear models
linFit(menmile$Year, menmile$Record)
linFit(womenmile$Year,womenmile$Record)

# 1. Which scatterplot shows a stronger linear relationship between World Record times in the Mile and Year:
  Men

# 2. On average, how many seconds do men trim off the world record time in the Mile each year? (Round to three decimal places)
  0.393
  
# 3. On average, how many seconds do women trim off the world record time in the Mile each year? (Round to three decimal places) 
  0.973
  
# 4. How many years would you predict it would take for the men's mile record to decrease by one full second? Use the model equation to help you answer the question.
  About 2.5 years

# 5. How many years would you predict it would take for the women's mile record to decrease by one full second? Use the model equation to help you answer the question.
  About 1 year

# 6. What proportion of variance in the men's World Record times in the Mile can be explained by year? (Round to three decimal places)
  0.977
  
# 7. What proportion of the variance in women's World Record times in the Mile can be explained by year? (Round to three decimal places)
  0.896

# 8. Which of the following is a reasonable conclusion to draw from this analysis?
  World record times in the Mile have decreased linearly over the last several decades for both men and women.
  
#### Draw Conclusions #####
  
# Based on scatterplots of the men's and women's world record mile event, both of these events follow a strong, __negative__ relationship over time. For both groups, the assumption of linearity appears to be satis???ed. The men's world record mile time decreases by an average of __0.393__ seconds per year, while the women's record distance decreases by an average of __0.973__ seconds per year. Because the __intercept__ estimate is the value of the record time when year is equal to 0, it is not interpretable in the context of the problem. Both linear models ???t the data well, with R-squared values for the men's and women's models equal to __0.977__and __0.896__, respectively. For the men's world record, 97.7% of the __variance__ is explained by the linear model of year, while for the female world record, 89.6% of the  __variance__ in performance can be explained by the linear model of year.
  