# The script works on the current directory
#
# Samuel Rodriguez Bernabeu
# Assignment: lecture 1
# deliver date: 22/09/14
#
#

rm(list=ls()) # clear the actual workspace

# Exercise 1: create the vector containing the provided data
Year <- c(1980,1988,1996,1998,2000,2002)
mean_weight <- c(71.5,72.1,73.3,74.3,75.2,74.7)
Gender <- c("M", "M", "F", "F", "M", "M")
mean_height <- c(179.3,179.9,180.5,180.1,180.3,180.4)

# Exercise 2: Create a list called mylist containing the above vector.
#             Give each component of the list a name

mylist <- list( Year=Year, Weight=mean_weight, Gender=Gender, Height=mean_height)
mylist

# Exercise 3: use three different ways to access the 4th element of the list
mylist[4]        # accessing via indexing directly to the 4th element.
mylist["Height"] # "Height" is the name of the fourth element of the list
mylist$Height    # "Height" is the name of the fourth element of the list
