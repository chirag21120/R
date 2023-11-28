#Q1
marks<- data.frame(SUB1 = sample(60:100, 20, replace = TRUE),
                   SUB2 = sample(60:100, 20, replace = TRUE),
                   SUB3 = sample(60:100, 20, replace = TRUE))
marks <- data.matrix(marks,nrow=20,ncol = 3)
marks
#a Find total marks of each student using apply
total_marks <- apply(marks, 1, sum)
total_marks

#b Append total marks to the MARKS dataset
marks <- cbind(marks, Total = total_marks)
marks

#c Calculate standard errors for SUB1, SUB2, and SUB3 
st.err <- function(x) {
  sd(x) / sqrt(length(x))
}
se_SUB1 <- st.err(marks[, "SUB1"])
se_SUB2 <- st.err(marks[, "SUB2"])
se_SUB3 <- st.err(marks[, "SUB3"])
se_SUB1
se_SUB2
se_SUB3

#d Add 0.25 bonus marks to SUB1, SUB2, and SUB3
marks[, c("SUB1", "SUB2", "SUB3")] <- marks[, c("SUB1", "SUB2", "SUB3")] + 0.25
marks

#Q2
V1 <- marks[, "SUB1"]
V2 <- marks[, "SUB2"]
V3 <- marks[, "SUB3"]
V1
V2
V3
total_v1<-lapply(list(V1, V2, V3), sum)
total_v1


data_url <- "https://raw.githubusercontent.com/biocorecrg/CRG_RIntroduction/master/ex12_normalized_intensities.csv"
project1 <- read.csv(data_url, header = TRUE, row.names = 1)
project1
write.csv(project1)
