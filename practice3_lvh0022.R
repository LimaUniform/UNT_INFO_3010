course.grades <- c(92, 78, 87, 69, 90, 54, 49, 75)

#Write a loop to print the grade of all students
for (i in course.grades)
{
    print(i)
}

#Write a loop with condition function inside. If a student has grade less
#than 60, print “failed”, otherwise print “pass”
for (i in course.grades)
{
  if(i < 60)
  {print ("Failed")}
  else 
  {print ("Pass")}
}

#Create a function to compute the area of a rectangle with length and 
#width
area_function <- function(l, w)
{
  return(l * w)
}

#Load the data to RStudio.
setwd('/Users/luhuynh/Desktop/INFO 3010/Week 3')
Adults <- read.csv('Adults_cleaned.csv')
View(Adults)

#Check how many samples in the dataset?
#Wouldn't it make more sense to rephrase this question into how many rows instead?
nrow(Adults)

#View the first 10 rows of the data
head(Adults, 10)

#Get the data types for each column
str(Adults)

#Get a summary of the data
summary(Adults)

#Count how many people come from Cuba?
nrow(Adults[Adults$native.country == 'Cuba', ])

#How many people have education ‘Bachelors’?
nrow(Adults[Adults$education == 'Bachelors', ])

#What is the percentage of people earn more than 50K?
100 * mean(Adults$label == ">50K")

#For people who work more than 40 hours, what is the percentage of 
#people earn more than 50K?
nrow(Adults[Adults$label == '>50K' & Adults$hours.per.week > 40, ])

#Find the total rows for this dataset
nrow(Adults)

#Use division to find the percentage
100*(3856/32561)

