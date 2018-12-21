library(SDSFoundations)
bull <-BullRiders

#### Reflect on the Question ####

# In this lab, you will use correlation to answer a question of interest. Let's start by remembering why we use correlation.
# 
# 1a. A correlation can tell us:
  the direction and strength of a linear relationship between two quantitative variables.

# 1b. Look at the scatterplot below. Select the answer that best describes what would happen to the value of the correlation coefficient rxy if the circled point were removed from the analysis.
  The value of rxy would increase
  
  # 2. One of the following questions will be answered in this lab using correlation. Select the question that can be answered with correlation.
  
  Which variable has the strongest linear relationship with earnings: successful ride percentage or Cup points? 
  
#### Analyze the Data ####

#Primary Research Question
# In 2012, which variable had the strongest linear relationship with Earnings:  Ride Percentage or Cup Points?

# Let's break this analysis into the different steps that you will need to take to construct a complete answer.  Be sure to:
#   
# 1. Create a dataset which contains riders that participated in at least one event in 2012. Call the dataset new_bull12.
# 2. Make a histogram to visualize the distribution of Earnings for 2012.
# 3. Generate the appropriate descriptive statistics for this distribution.
# 4. Make a correlation matrix for Earnings12, RidePer12 and CupPoints12.
# 5. Plot a scatterplot for Earnings12 with each variable of interest.  Put Earnings12 on the y-axis.  Check for outliers.
# 6. Determine which variable has the strongest linear relationship with Earnings12.

new_bull12 <- bull[bull$Events12 >= 1, ]

# Visualize and describe the Earnings12
hist(new_bull12$Earnings12)
fivenum(new_bull12$Earnings12)
mean(new_bull12$Earnings12)
sd(new_bull12$Earnings12)

# Create a scatterplot of Earnings vs Ride Percentage
plot(new_bull12$RidePer12, new_bull12$Earnings12)
abline((lm(new_bull12$Earnings12~new_bull12$RidePer12)))

# Create a scatterplot of Earnings vs Cup Points
plot(new_bull12$CupPoints12, new_bull12$Earnings12)
abline((lm(new_bull12$Earnings12~new_bull12$CupPoints12)))

# Create a correlation matrix 
vars <- c("Earnings12", "RidePer12", "CupPoints12")
cor(new_bull12[,vars])

# identify specific outlier case
which(new_bull12$Earnings12 == max(new_bull12$Earnings12))

#Subset the data to remove earnings outlier
nooutlier <- new_bull12[new_bull12$Earnings12 < 1000000 ,]

# Re-create a correlation matrix without outlier
vars <- c("Earnings12", "RidePer12", "CupPoints12")
cor(nooutlier[,vars])

# Create a scatterplot without outlier
plot(nooutlier$RidePer12, nooutlier$Earnings12)
abline((lm(nooutlier$Earnings12~nooutlier$RidePer12)))

plot(nooutlier$CupPoints12, nooutlier$Earnings12)
abline((lm(nooutlier$Earnings12~nooutlier$CupPoints12)))

# 1a. What is the shape of the Earnings distribution for 2012?
  positively skewed
  
# 1b. What was the average amount earned by a bull rider? (Choose the appropriate measure of center; report without a $ sign and round to the nearest whole number.)
  147952
  
# 1c. What was the highest amount earned by a bull rider? (Report without a $ sign and round to the nearest whole number.)
  1464476
  
# 2a. Does the scatterplot show a linear relationship?
  Yes
  
# 2b. What is the correlation of Earnings with Ride Percentage for 2012? (round to three decimal places)
  .593

# 3a. Does the scatterplot show a linear relationship?
  Yes
  
# 3b. What is the correlation of Earnings with Cup Points for 2012? (report to three decimal places)
  .657
  
# An outlier can have a significant impact on the correlation coefficient. Sometimes it is important to remove these points to examine the size of this impact. Run this code to identify the extreme data value in Earnings:
    # identify specific case
    which(new_bull12$Earnings12 == max(new_bull12$Earnings12))
  
# 4a. The extreme earnings data point belonged to the rider that came in __first__ Place in 2012. (Please spell your answer; do not use numerals.)

# 4b. Where does this data point fall in the scatterplot? (Make sure that Earnings12 is on the y-axis)
    Above the line  
  
# Let's remove this data point from the dataset to assess what kind of impact, if any, it had on our correlation analysis. Run this code:
# #Subset the data
  nooutlier <- new_bull12[new_bull12$Earnings12 < 1000000 ,] 
 
# Then rerun the correlation matrix and the scatterplots to see the difference. Make sure to use the new dataframe (nooutlier) that you just created.

# 4c. After removing the outlier, what was the new correlation of Earnings and Ride Percentage for 2012? (Round to three decimals)
  .804
  
# 4d. After removing the outlier, what was the new correlation of Earnings and Cup Points for 2012? (Round to three decimals)
  .893
  
# 4e. We would say that this data point was an influential point because it
  masked the strength of the relationships between Earnings and the other variables 

#### Draw Conclusions ####

  # An initial examination of the relationships between Ride Percentage (RidePer) and Earnings, and Cup Points (CupPoints) and Earnings showed that Cup Points had the __stronger__ relationship to Earnings. Ride Percentage and Earnings showed a correlation value of __0.593__ while Cup Points and Earnings had a correlation value of __0.657__. Visual examination showed an __outlier__ in both relationships-a rider who has earned over 1 million dollars. Removal of this increased the initial relationship: Ride Percentage and Earnings now had a correlation value of __0.804__ and Cup Points and Earnings had a correlation value of __0.893__.  __Cup Points__ still had the higher relationship to Earnings. Visual examination showed a __good linear relationship__ for both Ride Percentage and Cup Points, indicating the correct use of the correlation coefficient.
