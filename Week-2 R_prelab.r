library(SDSFoundations)
animaldata <-AnimalData
# Primary Research Question
# How many days do animals spend in the shelter before they are adopted?

#### Examine the Data ####

# How many animals are in this dataset?
# 473 by inspection of dataset

# How many of the first 10 animals in the dataset were adopted?
# 4 by inspection of dataset

# Was the first owner-surrendered animal in the dataset neutered?
# No, by inspection of dataset

# 2a. What variable tells us the length of time an animal stayed in the shelter? The variable name in the dataset is:
# Days.Shelter

# 2b. What type of variable is this?
# numerical

# 2c. What variable tells us if the animal was adopted? The variable name in the dataset is:
# Outcome.Type

# 2d. What type of variable is this?
# categorical

#### Prepare for the Analysis #####

# Lets break this analysis into its required steps:
# 
# 1. Determine which animals in the dataset were adopted.
# 
# 2. Generate a histogram for the length of time these adopted animals were in the shelter.
# 3. Select the appropriate measures of center and spread to describe the distribution.
# 4. Identify which animal was an outlier on this particular variable.

# Here is the code you will use:

# Find the number of animals that were adopted
table(animaldata$Outcome.Type)

# Pull out only adopted animals
adopted <- animaldata[animaldata$Outcome.Type=="Adoption",]

# Pull out just the days in shelter for the adopted animals
daystoadopt <- adopted$Days.Shelter

# Visualize and describe this variable
hist(daystoadopt)
fivenum(daystoadopt)
mean(daystoadopt)
sd(daystoadopt)
which(animaldata$Days.Shelter==max(daystoadopt))

 #### Problem Questions ####
# 1. What will the line of the code do for us?
#   table(animaldata$Outcome.Type)
# It will generate a frequency table to show us how many animals experienced each type of outcome

# 2. We are creating a new object called daystoadopt. What does this object contain?
# The number of days that animals spent in the shelter if their outcome type was "Adoption."

# 3. Which line in the R code produces a visual of the distribution of daystoadopt?
# hist(daystoadopt)

# 4. The following line of R code will produce a row number:
#   which(animaldata$Days.Shelter==max(daystoadopt))
#  What will this row number tell us?
#  It will tell us the row that contains the animal that took the longest to be adopted.

# 5. Suppose we have run the following code to subset the dataset for only male animals. What is the cause of the error below? (Examine the data set in R for help.)
# animaldata<-AnimalData 
#  males<-animaldata[animaldata$Sex == 'Male'] 
#  Error in [.data.frame`(animaldata, animaldata$Sex == "Male") :
#             undefined columns selected
#
# We are missing a comma inside of the brackets.

#### Analyze the Data ####

# 1. How would you describe the shape of the distribution of daystoadopt?
# positively skewed

# 2. Which measures of center and spread should you report for this data?
#   median and IQR
# Enter numerical values for the following:

# 3a. Center=
#   13

# 3b. Spread=
#   30

# 4a. How many days was this animal in the shelter?
#   211
# 
# 4b. What was the z-score for this particular animal? Round to the nearest TWO decimal places.
#   5.09

# 5. Why should we NOT report a z-score for this animal, even though we can calculate one?
#  The distribution is skewed. 

#### Write Your Conclusion ####

# Answer the question and support your answer with statistics:
   
# On average, animals spent fewer than two weeiks in the shelter before being adopted (median = 13 days, IQR = 30 days). The length of time was highly skewed to the right, however. The longest period of time an animal was in the shelter was 211 days before being adopted. This animal was a 2-year-old dog that entered the shelter injured. The middle 50% of the distribution were adopted between 8 and 38 days.
