##### Preamble #####
# Purpose:
# The purpose of this code is to do some cleaning to the data set obtained from:
# https://www.kaggle.com/dileep070/heart-disease-prediction-using-logistic-regression
# Save the required data in your local directory and name it framingham.csv, 
# and then set your working directory to the directory that contains this data set.

# Despite of some missing values, the original data is pretty clean and easy to interpret. 
# With the objective of our study, we decide to remove the variable education as we do not think it has an as strong 
# relationship with predicting the 10-year-risk of having heart disease. Also, variable glucose is removed from the 
# data set as it contains too many missing values(388 missing observations). 

# After taking out these two variables, we then omit all the missing values in the remaining observations, 
# which left us with 4088 observations in total.

# Author: Qing Wen
# Contact: qing.wen@mail.utoronto.ca
# Date: December 21, 2020
# License: MIT

library(tidyverse)
library(skimr)
# read in the original dataset
heart_data_original <- read_csv("C:/Users/10128/Desktop/STA304/Final project/framingham.csv")
# skim(heart_data_original)

# take out two variables and remove the missing values in the rest of the observations
heart_data <- heart_data_original %>% 
  select(-c(education, glucose)) %>% 
  na.omit() 

skim(heart_data)

# save the cleaned dataset 
write_csv(heart_data, "C:/Users/10128/Desktop/STA304/Final project/cleaned_data.csv")


