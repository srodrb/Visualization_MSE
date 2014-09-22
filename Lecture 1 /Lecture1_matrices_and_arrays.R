# The script works on the current directory
#
# Samuel Rodriguez Bernabeu
# Assignment: lecture 1
# deliver date: 22/09/14
#
#

rm(list=ls()) # clear the actual workspace

# Exercise 1: construct a matrix A with values 10,20,30,50 in column 1 (...)
array <- c(10,20,30,50,1,4,2,3,15,11,19,5)
A <- matrix( array, nrow=4, ncol=3)
A

B = matrix( data=c(2.5,3.5,1.75), nrow=1, ncol=3)
B


# Exercise 2: combine A and B into a new matrix C using cbind()
C = cbind( A, B)
C
# cbind(A,B) throws an error, "the number of rows on the matrices must be the same"


# Exercise 3: combine A and B into a new matrix C using rbind()
H = rbind(A,B)
H

# Exercise 4: determine the dimensions of C and H using dim() function
dim(H)


# Exercise 5: calculate the following
M = matrix( data=c(1,4,3,0,-2,8), nrow=2, ncol=3)
N = matrix( data=c(1,9,2,17,-6,3), nrow=3, ncol=2)
result <- M%*%N
result

# Exercise 6: create a 4x4x2 array arr using the values 1 to 32
arr <- array( data=1:32, c(4,4,2))

# Exercise 7: print out the value in row 1, column 3 of the first 'matrix'
arr[1,3,1]


# Exercise 8: print out the value in row 2, column 4 of the second 'matrix'
arr[2,4,2]

# Exercise 9: add these two values together
arr[1,3,1] + arr[2,4,2]