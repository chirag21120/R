s1 = seq(1.3,4.9,0.3)
s1
s2 = rep(1:4,5)
s2
s3 = seq(14,0,-2)
s3
s4 = rep(c(5,12,13,20),each=2)
s4

#Q3 
# Calculate mean and standard deviation by species
aggregate(cbind(Sepal.Length, Sepal.Width) ~ Species, data = iris, FUN = function(x) c(mean = mean(x), sd = sd(x)))

# Create a new dataset iris.class
iris.class <- iris
iris.class
# Create the Calyx.Width variable
iris.class$Calyx.Width <- character(length = nrow(iris.class))

# Loop through each row and set Calyx.Width based on Sepal.Length
for (i in 1:nrow(iris.class)) {
  if (iris.class$Sepal.Length[i] < 5) {
    iris.class$Calyx.Width[i] <- "short"
  } else {
    iris.class$Calyx.Width[i] <- "long"
  }
}
iris.class


