library(SDSFoundations)
WR <- WorldRecords

# Primary Research Question
# How has the men's shotput world record changed over time?  What about the women's world record?

#### Examine the Data ####

# 1a. How many different types of events (e.g. "Mens 100m," "Womens shotput," etc.) are represented in the dataset?
table(WR$Event)
  10
# 1b. In what year did Usain Bolt first break the world record for the men's 100m dash?
  2008
# 1c. Who was the first woman to break the women's 1 mile world record with a time of less than 260 seconds?  
  Mary Slaney
  
# 2a. Which variable tells us the record setting time or distance? The variable name in the dataset is:
  Record

# 2b. What type of variable is this?
  Quantitative

  # 2c. Which variable tells us when the record was broken? The variable name in the dataset is:
  Year
  
# 2d. What type of variable is this?
  Quantitative

# 3. For each sex, we will begin our analysis by generating a scatterplot of shotput distance and year. Why?
  The scatterplot will show us if these two numeric variables are linearly related.

# 4. What will we be able to determine once we fit a linear model to this shotput world record data?
  We will be able to report the average rate of change in world record shotput distance per year.
  
  
#### Prepare for the Analysis #####

# Breakdown Your Analysis

# 1. Create a subset of the dataset that contains only the World Record cases for men's shotput.
# 2. Create a subset that contains only the World Record cases for women's shotput. 
# 3. Create a scatterplot of year and record shotput distance: one for men and one for women.  
# 4. Confirm from these plots that a linear model is appropriate.  
# 5. Run a linear model for each event and then interpret the results.

# Here is the code you will use:
#Subset the data
menshot <- WR[WR$Event=='Mens Shotput',]
womenshot <- WR[WR$Event=='Womens Shotput',] 
# 
# Create scatterplots
plot(menshot$Year,menshot$Record,main='Mens Shotput World Records',xlab='Year',ylab='World Record Distance (m)',pch=16)
plot(womenshot$Year,womenshot$Record,main='Womens Shotput World Records',xlab='Year',ylab='World Record Distance (m)',pch=16)
# 
#Run linear models
linFit(menshot$Year, menshot$Record)
linFit(womenshot$Year,womenshot$Record)
  
# 1) What is the best description of what will be included in the new dataframe "menshot"?
  Only those rows in WR that include the event Mens Shotput.
  
# 2) Which variable will be on the x-axis of each scatterplot?
  Year
  
# 3) Which function will we use to fit a linear model to the world record data?
  linFit
  
# 4) What is the dependent variable in our linear models?
  Shotput distance
  
# 5) Suppose we wanted to subset our dataset for only world records that were from 1990 and later. What caused the error below? (You may want to examine the dataset in R for help.) 
  # WR<-WorldRecords
  # recent<-WR[Year>=1990,]
  
  # Error in [.data.frame (WR, Year >= 1990, ) : object 'Year' not found
  
  We forgot to tell R to look in the "WR" dataset for "Year" (ie. WR$Year).
  

  
#### Conduct the Analysis ####
  
# 1a. How many records are in the menshot data frame?
  39
# 1b. How many records in the womenshot data frame?  
  41
# As you look at the scatterplot:
#   
# 2a. Is a linear model appropriate for the men's shotput data?
  Yes  
# 2b. Is a linear model appropriate for the women's shotput data?
  Yes
  
# What is the equation for the linear model that predicts the World Record shotput distance for men?
# 3a. record distance = __-243.3384__ + (_0.13411__ * year)
# 3b. What is the value of R2?
  0.941
  
# What is the equation for the linear model that predicts the World Record shotput distance for women?
# 4a. record distance = __-440.33__ + ( _0.23366__ * year)
# 4b. What is the value of R2?
  0.962
  
# 5. What can we say about the models for men and women?
  The rate of change is greater for women than for men.
  
  
#### Draw Conclusions #####
  
# Answer the question and support your answer with statistics:
#   
#   Based on scatterplots of the men's and women's world record shotput distance, both of these events follow a strong, __positive__linear relationship over time. The men's world record distance increases by an average of __0.134__ meters per year, while the women's record distance increases by an average of __0.234__ meters per year. Because the intercept estimate is the value of the record distance when __year__ is equal to 0, it is not interpretable in the context of the problem. Both linear models fit the data well, with R-squared values for the men's and women's models equal to __0.941__and _0.962__, respectively.