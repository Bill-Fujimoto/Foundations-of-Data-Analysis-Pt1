library(SDSFoundations)
world <-WorldBankData

#### Reflect on the Question ####

# The World Bank is a data collection of information on all the world's countries. Data is collected by country, and include items such as total population, CO2 emissions, and the number of mobile device subscriptions. We will examine some of the trends in this dataset and interpret the parameters of the fitted models to best describe the change over time.

# 1) When choosing between two models with very similar R2 values, what additional statistic should you examine to help you select the best-fitting model?
  The residuals

# 2) Which parameter represents the rapidity of growth (or change) in both the exponential and the logistic model?
  b
  
# 3) Most biological data will follow a logistic growth model. Why?
  The logistic model takes into account the fact that most growth does not continue indefinitely.
  
  
#### Analyze the Data ####
    
# Primary Research Question
  # Denmark is a high-income country in Europe of about 5.5 million people. What is the best-fitting model for growth of internet usage in Denmark since 1990?  
  
# 1. Create a variable that represents proportion of the population using the internet (internet users divided by population).
# 2. Create a subset of the data that only contains data from 1990 onward.
# 3. Create a new variable that is "years since 1990". 
# 4. Create two new data frame for the country of interest.
# 5. Determine the best-fitting model (exponential or logistic) for internet usage in each country from 1990 onward.
  

# Subset data for just Denmark and name the new data frame "dnk"
dnk <- world[world$Country.Code == "DNK",]
  
# Create a new variable in our dataset called time that represents "proportion of population using the internet"
dnk$users <- dnk$internet.users/dnk$population

# Select the years from 1990 and name the new data frame "dnk_select"
dnk_select <- dnk[dnk$year >= 1990, ]
  
# Create a new variable in our dataset called time that represents "years since 1990"
dnk_select$time <- dnk_select$year - 1990
  
# Use a function to fit an exponential and logistic model for 1990 onward
expFit(dnk_select$time, dnk_select$users)
logisticFit(dnk_select$time, dnk_select$users)

# Report the model fit statistic (R2) for each of the following models. Round to 4 decimal places.

# 1a) Exponential growth model for Denmark:
  0.8001

# 1b) Logistic growth model for Denmark:
  0.9949
  
# 1c) What is the best-fitting model for growth of internet usage in Denmark from 1990 onward?
  logistic
  
# Exponential Models
  
# 2a) What is the growth factor for the exponential model? (Round to 3 decimal places.)
  1.347

# 2b) What is the percent growth rate of internet use, according to the exponential model? (Round to a whole-number percentage, but report without using "%")
  35

# Logistic Models
# 3a) What is the carrying capacity in Denmark? (Round to 4 decimal places.)
  0.8967
  
# 3b) What is the value of b (the growth indicator) in Denmark? (Round to 2 decimal places.)
  1.73

# Prediction Using Both Models
  
# 4a) In what YEAR does the exponential model predict that 70% of the Denmark population would be using the internet? Use the equation to solve. (Round to a whole number.)
  2006
  
  # 4b) In what YEAR does the logistic model predict that 70% of the Denmark population would be using the internet? Use an equation to solve. (Round to a whole number.)
  2003
  
#### Draw Conclusions #####
  
# After using both an exponential and a logistic function to model Denmark's growth of internet usage since 1990, we found that the __logistic__ model fit better with a high R-squared value of __0.995__, compared to an R-squared value of __0.800__ for the exponential model. In addition, it is visually clear from the graphs that the logistic model fit the observed data better than the exponential model. All of this suggests that we should trust predictions from the logistic model more than predictions from the exponential model. The exponential model suggests that in 1990, there was a predicted proportion of __0.00585__ of Denmark's population that used internet, with the proportion of internet users increasing by a factor of __1.347__ every year after 1990, on average. The logistic model shows that the predicted __carrying capacity__ of the proportion of people who use internet in Denmark was .8967. Since the logistic model fits better, the proportion of internet users in Denmark will probably eventually __level off__ rather than continuing to grow exponentially.
  