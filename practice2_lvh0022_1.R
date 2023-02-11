#<- is declared within the user work space.
#The operator <-can be used anywhere, whereas the operator = is only allowed at the top level 
#(e.g., in the complete expression typed at the command prompt) 
#or as one of the sub expressions in a braced list of expressions.
a <- 15

#= is declared within the function’s scope of the function, so it doesn’t exist in the user work space.
#The operator <-can be used anywhere, whereas the operator = is only allowed at the top level 
#(e.g., in the complete expression typed at the command prompt) 
#or as one of the sub expressions in a braced list of expressions
N = "Hello World!"
a
N

#check type of a
typeof(a)
#change a to strings 
as.character(a)
#check type of a
typeof(a)

#create object b
b <- a - 10
#square root of b
sqrt(b)
#log of b
log(b)

#Test if object is int using is.integer() aka return Boolean for whether the argument is of type int
#However, the is.integer function is returning the logical value FALSE due to the 
#is.integer function is checking whether a data object has the integer class (or data type). 
#Since our data object has the numeric data class, the is.integer function returns FALSE.
a=2
is.integer(a)

#Tries to cast its argument to type integer to translate it sensibly into 
#a integer-type value
as.integer(a)

#Test again if object is int using is.integer() 
is.integer(a)

#Cast its argument to type integer by using the = operator to declare within the function's scope
b=as.integer(a)
b

#Finally test again if object is int using is.integer() after casting with the function above
is.integer(b)
