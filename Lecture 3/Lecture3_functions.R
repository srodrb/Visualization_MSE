# The script works on the current directory
#
# Samuel Rodriguez Bernabeu
# Assignment: lecture 3
# deliver date: 06/10/14
#
#

# Exercise 1: Write a function that when passed a number, returns the number squared, 
#             the number cubed, and the square root of the number.
fEx1 <- function(val){
  
  if(val < 0){
    message("Warning, sqrt function requires a positive integer number")
  }else{
    c( val, val^2, sqrt(val)) 
  }
}

cat("Results of the function: "); fEx1(-5)

# Exercise 2: Write a function that when passed a numeric vector, prints the value of 
#             the mean and standard deviation to the screen (Hint: use the cat() 
#             function in R.) and creates a histogram of the data.
fEx2 <- function(x){
  if( is.vector(x) && is.numeric(x) ){
    cat("Mean ", mean(x), " standard deviation ", sd(x) )
    hist(x)
  }else{
    message("The argument is not valid, must be a numeric vector")
  }
  
}

x <- seq(0,2, len=5)
fEx2(x)


# Exercise 3: Management requires a function that calculates the sum of the lengths 
#             of 3 vectors. Write the function.
fEx3 <- function(x, y, z){
  if( is.vector(x) && is.vector(y) && is.vector(z)){
    return (length(x) + length(y) + length(z))
  }
  else{
    message("Invalid arguments: x,y and z must be vectors!")
  }
}

fEx3(x,x,x)