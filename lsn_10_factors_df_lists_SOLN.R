## SE370 AY22-2
## Lesson 10 - Factors, DataFrames, and Lists


## Last class we focused on working with arrays and matrices, and understanding
## arithemetic operators, relational operators, and logicals. Today, we are going
## to focus on factors, dataframes, and lists -- which are other data structures
## that we will use frequently in R!

#What is a factor?

# ANS: Factors are the data objects which are used to categorize the 
# data and store it as levels. They can store both strings and integers.
# It's use for categorical variables (as opposed to continuous variables)

# Create a vector called students of student performance  - A , B, B, C, D, F, A

students <- c("A", "B", "B", "C", "D", "F", "A")

# Factor the vector and set the levels of the vector so that it is A > B > C > D > F

students = factor(students, ordered = TRUE, levels = c("F", "D", "C", "B", "A"))

# Find the summary of the vector
summary(students)
students

# Display the different levels we have for students. Why might it be beneficial to 
# have these values set in a specific order?

# ANS: It allows us to show which grades are higher, and which grades are lower
# We can use relational operators, etc on the factors!

# Is student #4's grade higher than student #2's?

students[4] > students[2]

# Let's look at dataframes now...
# What is a dataframe?

# ANS: Data Frame. A data frame is used for storing data tables. 
# It is a list of vectors of equal length.
# It's different than a matrix -- a matrix hold homogenous data (single data type.)
# A dataframe can contain heterogenous data types! (combo of numbers, characters,
# and factors!)

# Load in the army_cars_small dataset as the variable "cars"
setwd("C:/Users/erin.williams/Desktop/SE370_21_2/Lessons/Lesson 11")
cars <- read.csv("army_cars_small.csv")

# Look at the first 6 rows of the dataframe
head(cars)

# What kind of data are we working with? What is the structure?
str(cars)

# Look at the makes using the $ notation
cars$make

# A subset is a smaller verion of our original dataframe. 
# Sometimes, we select the subset based on a certain criteria (like car type).
# Sometimes, we just want to select certain columns, or certain rows.

# Subset the dataframe on only toyota cars, save the variable to toyota
toyota <- subset(cars, cars$make == "TOYOTA")

# How many of each year group are there in the dataset? 
# We'll use the table() function for this. table() performs categorical 
# tabulation of data with the variable and its frequency
# Save this as a variable toyota_years
toyota_years <- table(toyota$year)

# order your toyota dataframe by mileage
miles <- order(toyota$mileage)
toyota[miles, ]

# Did you get what you expect? Why or why not? How do you fix it?
class(toyota$mileage)

# Change the mileage variable to a numeric and try again
# https://stackoverflow.com/questions/19116442/how-to-convert-factor-to-numeric-in-r-without-nas-introduced-by-coercion-warning 
# remove "," and turn to numeric

toyota$mileage2 <- gsub(",","", as.character(toyota$mileage))
toyota$mileage2 <-  as.numeric(toyota$mileage2)
miles <- order(toyota$mileage2)
toyota[miles,]

# How good do you feel about this data?
plot(toyota$year, toyota$mileage2)

# LISTS are the R objects which contain elements of different types like ??? 
# numbers, strings, vectors and another list inside it. A list can also 
# contain a matrix or a function as its elements. It's a very "all purpose"
# data structure!

# Combine the cars, toyota, and toyota years objects together into a list named car_list--- name each thing appropriately
car_list <- list(all_cars = cars,toyota_cars = toyota,toyota_years =  toyota_years)

# Look at the structure of car_list
str(car_list)

# To access an element in a list, we can use square brackets
# Let's access the toyota_years table...
car_list[3]
car_list['toyota_years']


#---Challenge
#1. Download some crime data from: https://data.cityofchicago.org/Public-Safety/Crimes-2001-to-present/ijzp-q8t2
#2. Read the data into R
#3. Find 3 variables that *should* be factors and 3 that *should* be characters - why?









