library(SDSFoundations)
acl <-AustinCityLimits

# Question 1

# You want to see if an artist's popularity on Facebook (whether or not they have 100,000 or more likes) has anything to do with their age.
#   1.  Generate a table to show the number of artists that are "popular" and those that are not.
#   2.  Generate a table to show the number of "popular" artists within each age group.

# Subset to fb 100k likes
fblike = acl[acl$Facebook.100k == 1,]
group100k = table(fblike$Age.Group)
group100k
agegroup = table(acl$Facebook.100k, acl$Age.Group)
agegroup
prop.table(agegroup, 2)

# 1a. How many artists in the dataset have 100,000 or more likes on Facebook?
  85 from fblike inspection
# 1b. Which age group has the highest number of artists that have 100,000 or more likes on Facebook? (Spell out your answer, i.e. twenties, thirties, forties, etc.)
Thirties from group100k

# 1c. For each age group, fill in the proportion of artists who have 100,000 or more likes on Facebook.
Twenties: 0.786
Thirties: 0.775
Forties: 0.800
Fifties+: 0.594

# Question 2

# A high school counselor wants to categorize students according to two variables: their gender (male or female) and their grade level (freshman, sophomore, junior or senior).
# 2a. To how many possible outcomes can students be assigned?
  8

# An Economics professor kept a record of grades earned by the college students in his class, as shown below. (In the US, an "A" is the strongest grade and an "F" is the Weakest.)
          A	  B	  C	  D	  F
Freshman	5	  10	9	  10	6
Sophomore	8	  10	9	  7	  4
Junior	  11	5	  4	  4	  2
Senior	  9	  9	  4	  2 	0

# 2b. What proportion of students in the class received a grade of A? (Round to 2 decimal places.)
  0.26 (33/128)

# 2c. What proportion of the students were upperclassmen (juniors and seniors)? (Round to 2 decimal places.)
  0.39 (50/1128)

# 2d. What is the probability that a freshman received a failing grade of F? (Round to 2 decimal places.)
  0.15 (6/40)

# 2e. What is the probability that a randomly selected student from the class would be a sophomore that received a grade of B? (Round to 2 decimal places.)
  0.08 (10/128)

# 2f. What proportion of juniors passed the course with a grade of D or better? (Round to 2 decimal places.)
  0.92 (24/26)

# 2g. What is the probability that a randomly selected student from this class would be a senior? (Report to 2 decimal places.)
  0.19 (24/128)

# 2h. If a student received a grade of D in the class, what is the probability that the student was a senior? (Round to 2 decimal places.)
  0.09 (2/23) "Prob of senior given prob of D"

# 2i. Does the probability that a randomly selected student is a senior change if we know that the student received a grade of D in the course?
  Yes, 0.19 vs. 0.09

# Question 3

# Use the below probability statements to answer the following two questions. Report answers as proportions.
#   P(A) = 0.35
#   P(A and B) = 0.15

# 3a. If A and B are independent, what is the value of P(A|B)? (Round to 2 decimal places.)
  0.35 

# 3b. What is the probability of P(B|A)? (Round to 2 decimal places.)
  0.43  P(B|A)= P(B and A)/P(A) = 0.15/0.35

# Question 4

# A movie theater conducted a survey to determine the movie preferences of men and women. They asked a total of 130 adults (50 women and 80 men) to choose their favorite movie genre out of four choices: Action, Comedy, Horror, or Romance. The results of their survey are shown below.

          Women	  Men
  Action	12%   	35%
  Comedy	34%	    25%
  Horror	30%	    32.50%
  Romance	24%	    7.50%
    
# 4a. Based on the above information, do Gender and Movie preferences appear to be independent?
  No
  
# 4b. What is the probability that a randomly chosen person from the survey prefers Action films? (Report as a proportion rounded to 2 decimal places.)
  0.26  (12%*50 + 35%*80)/130

# 4c. What is P(Action|Women)? (Report as a proportion rounded to 2 decimal places.)
  0.12
