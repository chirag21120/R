
#Q1. Read the “daily_show_guests.csv” file from GitHub in the R and print the first 10 records
data<- read.csv('daily_show_guests.csv')
data
head(data,10)

#Q2. Display the “column names” of the table and rename the columns as: - year: YEAR; job:
#GoogleKnowlege_Occupation; date: Show; category: Group; guest_name: Raw_Guest_List.

colnames(data)
colnames(data) <- c('year','job','date','category','guest_name')
colnames(data)

#Q3. Create a report having year, date, and guest_name
report <- data[,c("year","date","guest_name")]
write.csv(report,"report.csv")
dir()
report<- read.csv("report.csv")
report

#Q4. Use “select” (dplyr) function to print all the record except “year”.
library(dplyr)
data %>% select(-year)

#Q5. Extract the list of peoples who are “actor” only name is “ABC” 
abc_actors <- data %>%
  filter(job == "actor" & grepl("Jimmy Smits", guest_name, ignore.case = TRUE)) %>%
  select(year, date, guest_name)
abc_actors

#alternate
abc_actors <- data %>% filter(job=="actor" & guest_name=="Jimmy Smits" )
abc_actors

#Q6. Arrange the records in-order of date.
arranged_data <- data %>%
  arrange(date)
arranged_data

#Q7. Add one column to the database with the name “Experience”. (Help: mutate() function in dplyr)
mutated_data <- data %>%
  mutate(Experience = year - 1970)
mutated_data
write.csv(mutated_data,"mutated.csv")
