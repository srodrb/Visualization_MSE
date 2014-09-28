# The script works on the current directory
#
# Samuel Rodriguez Bernabeu
# Assignment: lecture 2
# deliver date: 29/09/14
#
#

# Exercise 1: Create a data frame called club.points with the following data.
Firstname=c("Alice", "Paul", "Jerry", "Thomas", "Marguerite", "Linda")
Lastname =c("Ryan", "Collins", "Burke", "Dolan", "Black", "McGrath")
Age = c(37, 34, 26, 72, 18, 24)
Gender = c("F", "M", "M", "M", "F", "F")
Points = c(278, 242, 312, 740, 177, 195)
club.points <- data.frame( Firstname, Lastname, Age, Gender, Points )
summary( club.points)

# Exercise 2: Store the points for every person into a vector called pts, then calculate 
#             the average number of points received. (Hint use mean() function).
pts <- club.points$Points
mean(pts)

# Exercise 3: Store the data for the females only into a data frame called fpoints.
fpoints <- club.points[ club.points$Gender == "F", ]
summary(fpoints)

# Exercise 4: The age for Jerry Burke was entered incorrectly. Change his age to 28.
club.points[ club.points$Firstname == "Jerry" & club.points$Lastname == "Burke", ]$Age = 28
club.points

# Exercise 5: Determine the maximum age of the males.
max( club.points[club.points$Gender == "M",]$Age )

# Exercise 6: Extract the data for people with more than 100 points and are over the age of 30.
club.points[ club.points$Points > 100 & club.points$Age > 30, ]

