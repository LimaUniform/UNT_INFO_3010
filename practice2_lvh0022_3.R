#Create a list with vector x = 1:5, y = c(‘a’,’b’) and z = ‘this is string’ nested together.
list1 <- list(x = 1:5, y = c('a','b'), z = 'this is string')
list1

#Get z and check the type
# $ is used to index by name, list structure requires to use [[]] for index by position. 
#[] is for subsetting.
list1$z
list1[[3]]
str(list1$z)

#Get the vector y and check the type
list1$y
list1[[2]]
str(list1$y)

#Get the second element of x and check the type
list1$x[2]
str(list1$x[2])
