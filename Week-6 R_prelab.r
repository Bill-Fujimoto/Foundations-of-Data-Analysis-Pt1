library(SDSFoundations)
world <-WorldBankData

# Primary Research Question
# What model best describes the first decade of internet usage (1990-1999) in the United States? Which model is a better long-term fit?

#### Examine the Data ####

# 1a. What is the first "Low Income" country in the dataset?
  Afghanistan
  
# 1b. IWhat was the rural population of Aruba in 1970?
  29164
# 1c) When was the first year Australia had data on the number of mobile device subscriptions? (Subscriptions more than 0) 
  1987
  
# 2a. Which variable tells us the number of internet users in a specific year? The variable name in the dataset is::
  internet.users

# 2b. What type of variable is this?
  Quantitative

  # 2c. Which variable tells us when the number of internet users was recorded? The variable name in the dataset is:
  Year
  
# 2d. What type of variable is this?
  Quantitative

# 3a. What statistic helps us determine how well a particular model fits the data?
  R-squared  

# 3b. In this lab, we will calculate residuals after fitting both an exponential and a logistic model to a set of data. What is a residual?
  A residual is the difference between a predicted value and the actual observed value.
  
  
#### Prepare for the Analysis #####

# Breakdown Your Analysis

# 1. Create a subset of the dataset that contains only the information for the United States.
# 2. Create a subset of the US data that contains only the years 1990 to 1999.  
# 3. Use a function to fit both an exponential and a logistic model to the data.  
# 4. Using each model, predict the number of internet users in 2006. 
# 5. Compare the size of the residuals for 2006 to determine which model appears to have better long-term fit.
  
# Note:  In this pre-lab, you will be creating three new subsets of data by constraining the original world dataset. The names of these three datasets are shown in the table below.  A brief description of each is also provided to help you navigate the R code.

  # name	        description of dataset
  # us	          contains only the USA data from the world dataset
  # us_select     contains only the USA data for the years 1990 and beyond
  # us_select_10  contains only the USA data for the years 1990 - 1999

# Here is the code you will use:

# Subset data for just the United States and name the new data frame "us"
  us <- world[world$Country.Code == "USA",]
  
# Select the years from 1990 and name the new data frame "us_select"
  us_select <- us[us$year >= 1990, ]
  
# Create a new variable in our datset called internet.mil to make the number of users more interpretable (into millions)
  us_select$internet.mil <- us_select$internet.users / 1000000
  
# Create a new variable in our dataset called time that represents "years since 1990"
  us_select$time <- us_select$year - 1990
  
# Select the first 10 years (from 1990 to 1999) and name the new data frame "us_select_10"
  us_select_10 <- us_select[us_select$time < 10,]
  
# Use a function to fit an exponential and logistic model for 1990-1999
  expFit(us_select_10$time, us_select_10$internet.mil)

  logisticFit(us_select_10$time, us_select_10$internet.mil)
  
# Based on the prior model parameters, predict the number of internet users in 2006
  e <- expFitPred(us_select_10$time, us_select_10$internet.mil, 16)
  l <- logisticFitPred(us_select_10$time, us_select_10$internet.mil, 16)
  
  
# 1) In both of these models, what does Year 0 correspond to?
  1990
  
# 2) Which functions will you use to fit exponential and logistic models to the data?
  expFit() and logisticFit()
  
# 3) What will be the value of "us_select$time" for 2006?
  16
  
# 4) In 1990, the number of internet users in the US was 1,958,863. What will be the value of "us_select$internet.mil" for 1990 after this line of code is run?
  1.958863
  
# 5) Suppose we wanted to create a subset of data that contained only Belgium entries that were from 1990 and onward. What error was made in the code below? (Notice that R does not report some types of errors, making it very important to check your data as you go.)

  # world <- WorldBankData
  # belgium <- world[world$Country == 'Belgium',]
  # recent_belgium <- world[world$year >= 1990,]
  
  We pulled our data from the wrong dataset in the third line.
  
#### Conduct the Analysis ####
  
# 1) Report the parameters of the exponential model for the number of internet users in the US for years 1990-1999. (Round to 3 decimal places)
  a=1.872
  b=1.608
   
# 2) Report these parameters of the logistic model for the number of internet users in the US for years 1990-1999. (Round to 1 decimal place)
  C=127.8
  a=121.4
  
# 3) What was the actual number of internet users (in millions) in the United States in 2006?
  205.7
  
# How well did the exponential and logistic models predict the number of internet users in 2006?
  
# 4a) The exponential model predicted __3756__ million users in 2006. The residual was __-3550__.

# 4b) The logistic model predicted __127.5__ million users in 2006. The residual was __78.2__.
  
# 5) Based on the model residuals for 2006, which model do you think does a better job of predicting (long-term) the number of internet users?
  The logistic model.

#### Draw Conclusions #####
  
# Answer the question and support your answer with statistics:
  
# __Both the logistic and exponential models__ do/does a fairly good job of fitting the pattern of internet usage in the United States from 1990-1999, as shown by R-squared values __greater__ than 0.95. If we look ahead to 2006, however, we see that the __logistic__ model has a better long-term fit. This model predicted __127.5__ million users in 2006, with a smaller residual of __78.2__ million. The __exponential__ model predicted far more users than there really were. It appears that the number of new internet users grew rapidly at first but then began to level off over time.
