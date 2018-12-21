library(SDSFoundations)
WR <- WorldRecords

# Question 1

# How has mobile phone usage in Brazil changed since 1995?
# 1. Create a subset of the world bank data that contains records from Brazil 1995 and later.
# 2. Change the year variable to be "years since 1995" and update the units of the "mobile.users" variable to millions of users. 
# 3. Use this data to answer the following questions.

# Subset data for just Brazil and name the new data frame "bra"
bra <- world[world$Country.Code == "BRA",]

# Create a new variable in our datset called internet.mil to make the number of users more interpretable (into millions)
bra$mobile.mil <- bra$mobile.users / 1000000

# Select the years from 1995 and name the new data frame "bra_select"
bra_select <- bra[bra$year >= 1995, ]

# Create a new variable in our dataset called time that represents "years since 1990"
bra_select$time <- bra_select$year - 1995


# 1a. Use RStudio to find the number of mobile users in Brazil (in millions) in 2000. (Round to 2 decimal places.)
  23.19
 
# 1b. In what year did Brazil first record more than 100 million mobile users?
  2007
 
# 1c. Generate a scatterplot and fit a linear, exponential and logistic model to the data. Which model best describes the increase in mobile users in Brazil since 1995?
  tripleFit(bra_select$time, bra_select$mobile.users)
  logistic

# 1d. What proportion of the variation in mobile users is explained by years since 1995 in the best-fitting model? (Round to 3 decimal places.)
  0.998
  
# 1e. Using the best-fitting model, predict the number of mobile users (in millions) in Brazil in 2025. (Round to a whole number.)
  l <- logisticFitPred(bra_select$time, bra_select$mobile.mil, 30)
  345
  
# Question 2
  
# Records at the Center for Disease Control show that the total number of flu cases in Spring, 2009 looked like this:
      Date	Day	Flu Cases
      April 27	0	  73
      April 28	1	  105
      April 29	2	  137
      April 30	3	  257
      May   1	  4	  367
      May   2	  5	  658
      May   3	  6	  898
      May   4	  7	  1,085
      May   5	  8	  1,490
      May   6	  9	  1,893
  
# An initial examination of the data showed that both an exponential and a logistic growth model fit the data well:
  
    Exponential Model	  Logistic Growth Model
    a = 76.64	          C = 3,273.31
    b = 1.46	          a = 43.59
    R-squared = 0.984	  b = 1.57
                        R-squared = 0.996
  
# Use the data from the TABLE of Models to answer the following questions.

# 2a. Looking at the raw data, what is the rate of change in flu cases from April 30 to May 1? (Report as a proportion rounded to 2 decimal places.)
  .43
  
# 2b. What is the growth rate for the flu, according to the exponential model? (Report as a proportion rounded to 2 decimal places.)
  .46

# 2c. Predict the number of cases of flu on Day 14 (when "Day" is equal to 14), using the exponential model. (Round to a whole number, without a comma)
  15325
  
# 2d. Using the logistic model, predict the total number of flu cases on Day 14. (Round to a whole number, without a comma.)
  3034
  
# 2e. The actual number of flu cases on Day 14 was 4,379. Find the residual of the exponential model prediction. (Round to zero decimal places, without a comma.)
  -10946
  
# 2f. What is the residual of the logistic model prediction for Day 14? (Round to a whole number, without a comma.)  
  1345
  
# Based on the residuals of both models, what conclusion would you reach? Fill in the missing blanks.
  
# The better fit statistic of the __logistic__ model suggests that the number of new flu cases will __begin slowing down__. Based on this model, we would expect the maximum number of flu cases in the 2009 season to be: __3273__. However, __neither model__does a perfect job of predicting future cases by Day 14. We will need to observe how the data changes __after day 9__ to determine how the model needs to be adjusted.
  
# Question 3

# Yellowstone National Park began a project to restore its native wolf population in the mid 1990's. Below are the number of wolves soon after the start of the project:
# Year	Years since Project Began	  Number of Wolves
# 1996	1	                          25
# 1998	3	                          45
  
# 3a. Researchers fit a linear model to the wolf data. Using this model, how many wolves were being added to the park each year? (Round to a whole number.)
  10
  
# 3b. According to their linear model, what was the size of the original wolf population when the project began?
  15
  
# 3c. Another researcher assumed that the wolves would experience exponential growth because there were no predators. He fit an exponential model to this data. What is the growth factor for this model? (Round to 2 decimal places.)
  1.34 (take ratio of two equations to solve for b)
  
# 3d. What is the annual growth rate of these wolves each year, according to this model? (Report as a proportion rounded to 2 decimal places.)
  0.34
  
# 3e. Assuming exponential growth, find the initial number of wolves when the project began. Use your rounded answer from the previous question. (Round to a whole number.)
  19
  
# 3f. By 2002, there were 147 wolves in Yellowstone Park. Which model was determined to fit the data better?
  exponential
  
# 3g. Using the best-fitting model, how many years must pass before there are more than 325 wolves in Yellowstone? (Round to a whole number.)
  10

# Question 4

#  A group of hedgehogs was released in the south-Austin area. Each year, the size of the population was recorded. Their population growth over time was modeled with a logistic growth curve. The model fit was 0.972.
  # Here are the model parameters: 
  #   C = 2,000
  #   a = 152.10
  #   b = 2.17
  
# 4a. According to this model, what will be the maximum number of hedgehogs in South Austin?
  2000
  
# 4b. What was the size of the hedgehog population when the growth rate began to slow down?
  1000
  
# 4c. How many years had passed when the population growth rate began to slow down? (Round to 1 decimal place.)
  6.5
  
# 4d. The hedgehogs were released in South Austin in 2001. How many hedgehogs were living in South Austin by 2010, according to the model? (Round to a whole number.)
  1750
  