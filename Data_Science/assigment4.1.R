PatientID <- c(1:4)
AdmDate <- c("10/15/2009", "11/01/2009","10/21/2009","10/28/2009")
Age <- c(25,34,28,52)
Diabetes<- c("Type1","Type2","Type1","Type1")
Status <- c("Poor","Improved","Excellent","Poor")
df = data.frame(PatientID, AdmDate, Age, Diabetes, Status)

#Q2 a
subset1 <- df[,c("PatientID","Age")]
subset1

#b
type1<- df[df$Diabetes=="Type1",]
type1
#c
poor_count <- sum(df$Status=="Poor")
poor_count
#d
summary(df)
#e
average_age <- mean(df$Age[df$Diabetes=="Type1"])
average_age

#f
row <- c(5,"21/0//2009",31,"Type2","Excellent")
rbind(df,row)
df
#Q3
MyList<- list(Title = "My First List",
              Criteria = list(
                AgeVector = c(12,14,16,20),
                Matrix = matrix(0,nrow = 5, ncol = 5),
                ScoreVector = c("First","Second","Third")
              )
            )
MyList
MyList$Criteria
MyList$Criteria$AgeVector
