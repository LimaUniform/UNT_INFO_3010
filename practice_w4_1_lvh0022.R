setwd("/Users/luhuynh/Desktop/INFO 3010/Week 4")
murders <- read.csv("https://raw.githubusercontent.com/rairizarry/murders/master/data/murders.csv")
View(murders)

#1) Generate a new column named as population_in_millions, which is population/10^6
murders <- mutate(murders, population_in_millions = population/10^6)

#2) If rank(x) gives you the ranks of x from lowest to highest, rank(-x) gives 
#you the ranks from highest to lowest. Use the function mutate to add a 
#column rank containing the rank, from highest to lowest murder rate.
#Create a new column called 'rate' since this dataset does not have one.
murders <- mutate(murders, rate = total / population * 100000)
murders <- mutate(murders, rank = rank(-rate))

#3) Show the murder data for New York state.
filter(murders, state == "New York")

#4) See data from both New York and Texas.
filter(murders, state == "New York" | state =="Texas")
# #Using the provided answer from the slide and the answer is the same above that I used
# filter(murders, state %in% c("New York", "Texas"))

#5) Create a new data frame called no_florida with data except that of Florida state.
no_florida <- filter(murders, state != "Florida")

#6) Create a new data frame called murders_nw with only the states from the Northeast and the West.
#Work the same as the answer from the powerpoint slide.
murders_nw <- filter(murders, region == "Northeast" | region == "West")

#7) Suppose you want to live in the Northeast or West and want the 
#murder rate to be less than 1. We want to see the data for the states 
#satisfying these options. Note that you can use logical operators 
#with filter. 

#Add the rate lower than 1 but can skip this step since I already created the rate column in Q2
murders <- mutate(murders, rate = total / population * 100000)

#Create df called my_states that considers only states in the 
#Northeast or West which have a murder rate lower than 1
my_states <- filter(murders, region == "Northeast" | region == "West" & rate < 1)

#Select only the state, rate and rank columns.
select(my_states, state, rate, rank)

#The pipe should also have four components separated by three %>% by combining all the previous steps together.
#Create df called my_states
#Create new rate column and pass into murders the OG dataset 
#Filter out the request conditions
#Select the request column but with 'my_states' since we are passing the result to this df anyway.
my_states <- murders %>% mutate(murders, rate = total / population * 100000) 
%>% filter(murders, region == "Northeast" | region == "West" & rate < 1) 
%>% select(my_states, state, rate, rank)
