## SE370 AY21-2
## Lesson 11 - Factors, DataFrames, and Lists
## MAJ Williams

## Last class we focused on working with arrays and matrices, and understanding
## arithemetic operators, relational operators, and logicals. Today, we are going
## to focus on factors, dataframes, and lists -- which are other data structures
## that we will use frequently in R!

#What is a factor?

# ANS: 

# Create a vector called students of student performance  - A , B, B, C, D, F, A



# Factor the vector and set the levels of the vector so that it is A > B > C > D > F



# Find the summary of the vector



# Display the different levels we have for students. Why might it be beneficial to 
# have these values set in a specific order?

# ANS: 

# Is student #4's grade higher than student #2's?



# Let's look at dataframes now...
# What is a dataframe?

# ANS: Data Frame. A data frame is used for storing data tables. 
# It is a list of vectors of equal length.
# It's different than a matrix -- a matrix hold homogenous data (single data type.)
# A dataframe can contain heterogenous data types! (combo of numbers, characters,
# and factors!)

# Load in the army_cars_small dataset as the variable "cars"


# Look at the first 6 rows of the dataframe


# What kind of data are we working with? What is the structure?


# Look at the makes using the $ notation


# A subset is a smaller verion of our original dataframe. 
# Sometimes, we select the subset based on a certain criteria (like car type).
# Sometimes, we just want to select certain columns, or certain rows.

# Subset the dataframe on only toyota cars, save the variable to toyota


# How many of each year group are there in the dataset? 
# We'll use the table() function for this. table() performs categorical 
# tabulation of data with the variable and its frequency
# Save this as a variable toyota_years


# order your toyota dataframe by mileage


# Did you get what you expect? Why or why not? How do you fix it?


# Change the mileage variable to a numeric and try again
# https://stackoverflow.com/questions/19116442/how-to-convert-factor-to-numeric-in-r-without-nas-introduced-by-coercion-warning 
# remove "," and turn to numeric



# How good do you feel about this data?


# LISTS are the R objects which contain elements of different types like ??? 
# numbers, strings, vectors and another list inside it. A list can also 
# contain a matrix or a function as its elements. It's a very "all purpose"
# data structure!

# Combine the cars, toyota, and toyota years objects together into a list named car_list--- name each thing appropriately


# Look at the structure of car_list


# To access an element in a list, we can use square brackets
# Let's access the toyota_years table...



#---Challenge
#1. Download some crime data from: https://data.cityofchicago.org/Public-Safety/Crimes-2001-to-present/ijzp-q8t2
#2. Read the data into R
#3. Find 3 variables that *should* be factors and 3 that *should* be characters - why?









