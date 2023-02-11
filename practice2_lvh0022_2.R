#Create random student grade's points associated with the assigned letter grades
course_g <- c (76,97,68,92,88,56,90,84)
course_g
letter_g <- c ('A','B','C','E', 'D','F', 'G', 'H')
letter_g
names(course_g) <- letter_g
course_g

#Cut the grades into 3 ranges
grade_range <- cut(course_g, 3)
grade_range

#Identify students in each range by creating the table for categorical representation
table(grade_range)

#Statistical description of the grades.
summary(course_g)

#Who have grade less than 60?
course_g[course_g < 60]
