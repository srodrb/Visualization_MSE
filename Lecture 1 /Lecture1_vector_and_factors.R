# The script works on the current directory
#
# Samuel Rodriguez Bernabeu
# Assignment: lecture 1
# deliver date: 22/09/14
#
#

rm(list=ls()) # clear the actual workspace

# Exercise 1: create a vector x with the following entries, then change the 1's to 0's
x <- c(3,4,1,1,2,1,4,2,1,1,5,3,1,1,1,2,4,5,5,3)
x[ (x==1) ] = 0

# Exercise 2: create a vector y containing the elements of x that are greater than 1
y<-x[x>1]

# Exercise 3: create a sequence of numbers from 1 to 20 in steps of 0.2 and store
z<-seq( 1, 20, 0.2)

# Exercise 4: concatenate x and y into a vector called newVec
newVec <- c(x,y)

# Exercise 5: display all objects in the workspace and then remove newVec
ls()
rm(newVec)

# Exercise 6: six patients were asked to rate their pain from 0 to 3, with 0 representing "no pain", 1 representing 'mild' pain, 
#             2 representing 'medium' pain and 3 'severe' pain.
#             create a factor fpain to represent the data.

# Explanation: I've done this using a dataframe instead of a single vector. For a single vector would be the same

pain <- data.frame( Patient=1:6, fpain=c(0,3,1,2,1,2))
pain$fpain = factor( pain$fpain, levels=0:3)
levels(pain$fpain) <- c("no pain", "mild", "medium", "severe")
summary(pain)