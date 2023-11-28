library(dplyr)

Patient<- data.frame(
  AppointmentID= c(1,2,3,4,5,6,7,8),
  PatientID= c(1001,1002,1003,1004,1005,1002,1002,1003),
  PatientName= c("Ankit","Jatal","Kush","Aman","Manav","Jatal","Jatal","Jatal"),
  NurseID= c(501,502,503,504,505,502,502,503), 
  PhysicianID= c(1,3,2,4,5,3,3,2)
)

Room <- data.frame(RoomNumber= c(401,402,403,404,405), 
                   RoomType = sample(c("Single","Double","General"),5,replace = TRUE), 
                   Floor = c(1,1,3,2,2),
                   CostperDay= c(900,1500,2500,2900,1500), 
                   Availability= c("Yes","No","No","Yes","No"),
                   PatientID= c(0,1002,1003,0,1005))

#2
df1 <- left_join(Patient, Room, by = "PatientID")
df1

df2 <- Room %>% filter(Availability == "Yes", PatientID == 0)
df2

#3
appointments_more_than_2 <- Patient %>%
  group_by(PatientID, PhysicianID) %>%
  summarise(AppointmentCount = n()) %>%
  filter(AppointmentCount > 2, PhysicianID == 3)


appointments_more_than_2

#4
availability_report <- Room %>%
  group_by(RoomType, Availability) %>%
  summarise(Count = n())

availability_report

#5
occupied_rooms_on_floor_2 <- Room %>%
  filter(Floor == 2, CostperDay > 1200, Availability == "No")
occupied_rooms_on_floor_2

#6
RoomNumber <- list(Room$RoomNumber)
RoomType <- list(Room$RoomType)
Floor <- list(Room$Floor)

RoomNumber
RoomType
Floor

#7
Availibilty <- Room$Availability == "Yes"

RoomType <- list(RoomType,Availibilty)
RoomType

merged_list = c(RoomNumber,RoomType,Floor)
merged_list
