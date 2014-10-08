# The script works on the current directory
#
# Samuel Rodriguez Bernabeu
# Assignment: lecture 3
# deliver date: 06/10/14
#
#

# Exercise 1: For each of the following code sequences, predict the result. 
#             Then do the computation:
answer <- 0
for(j in 3:5) { answer <- j + answer }
cat("Answer ", answer)


answer <- 10 j <- 0
while(j < 5) {
  j <- j + 1
  if(j == 3)
    next else
      answer <- answer + j*answer
}
cat("Answer ", answer)


# Exercise 2: Add up all the numbers for 1 to 100 in two diffrent ways: using a f
#             or loop and using sum.
result_for <- 0 
for(i in 0:100){
  result_for <- result_for + i
}

result_sum <- sum(0:100)
cat("Result using for: ", result_for, " result using sum function ", result_sum)

# Exercise 3: Create a vector x <- seq(0, 1, 0.05). Plot x versus x and use type="l". 
#             Label the y-axis "y". Add the lines x versus x^j where j can have values 
#             3 to 5 using either a for loop or a while loop.
x <- seq(0, 1, 0.05)
plot(x ~x, type='l', ylab="y")
for(i in 3:5){ lines(x , x^i)}
