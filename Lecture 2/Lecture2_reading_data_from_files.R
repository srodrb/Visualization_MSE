# The script works on the current directory
#
# Samuel Rodriguez Bernabeu
# Assignment: lecture 2
# deliver date: 29/09/14
#
#

# Exercise 1: download the example2.txt file
# disclaimer: the data should be in the current directory to run this file

# Exercise 2: Read this data into R
data = read.table( "example2.txt", header=TRUE)

# Exercise 3: Print out the data for cases 10 to 18
data[10:18, ]

# Exercise 4: Print out the data for column 2, cases 23, 2, and 5 (in that order).
data[c(23,2,5), 2]

# Exercise 5: Find the mean, standard deviation, minimum and maximum for each 
#             variable using the smallest number of commands possible.
sapply( data, mean) # mean
sapply( data, min ) # min
sapply( data, max ) # max
sapply( data, sd  ) # standard deviation


# Extra: since *apply can only take one function, we can write a customize function
customizedFunction <- function(x) {
  c(min = min(x), mean = mean(x), max = max(x), Deviation = sd(x))
}

sapply( data, customizedFunction)
