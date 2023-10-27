# Q1(a)
coins <- c(rep("gold ", 20), rep("silver", 30), rep("bronze", 50))
sample_space <- sample(coins, 10, replace = TRUE)
sample_space
# 
# Q1(b)
outcomes <- c("success", "failure")
probabilities <- c(0.9, 0.1)
sample_space_b <- sample(outcomes, 10, replace = TRUE, prob = probabilities)
sample_space_b

#Q2 
calculate_birthday_probability <- function(n) {
  if (n < 2 || n > 365) {
    return(0)
  }

  probability_no_match <- 1
  for (i in 1:(n - 1)) {
    probability_no_match <- probability_no_match * (365 - i) / 365
  }
  probability_match <- 1 - probability_no_match
  return(probability_match)
}
calculate_birthday_probability(10)
# 
# 
find_smallest_n <- function(threshold) {
  n <- 2
  while (TRUE) {
    probability <- calculate_birthday_probability(n)
    if (probability > threshold) {
      return(n)
    }
    n <- n + 1
  }
}
# 
threshold <- 0.5
smallest_n <- find_smallest_n(threshold)
cat("The smallest value of n for which the probability of a match is greater than", threshold, "is:", smallest_n, "\n")

# Q3
# cond_prob <- function(pA, pB_A, pB) {
#   pA_B <- (pA * pB_A) / pB
#   return(pA_B)
# }
# p_cloudy <- 0.4
# p_rain <- 0.2
# p_cloudy_rain <- 0.85
# p_rain_cloudy <- cond_prob(p_rain, p_cloudy_rain, p_cloudy)
# p_rain_cloudy

# Q4
# # Load the Iris dataset
data("iris")
# 
# # (a) Print first few rows of the dataset
head(iris)
# 
# # (b) Find the structure of the dataset
str(iris)
# 
# # (c) Find the range of sepal length
range_sepal_len <- range(iris$Sepal.Length)
range_sepal_len
# 
# # (d) Find the mean of sepal length
# mean_sepal_length <- mean(iris$Sepal.Length)
# mean_sepal_length
# 
# # (e) Find the median of sepal length
# median_sepal_length <- median(iris$Sepal.Length)
# median_sepal_length
# 
# # (f) Find the first and third quartiles and the interquartile range of sepal length
quartiles_sepal_length <- quantile(iris$Sepal.Length, probs = c(0.25, 0.75))
iqr_sepal_length <- IQR(iris$Sepal.Length)
quartiles_sepal_length[1]
quartiles_sepal_length[2]
iqr_sepal_length
# 
# # (g) Find the standard deviation and variance of sepal length
# std_dev_sepal_length <- sd(iris$Sepal.Length)
# variance_sepal_length <- var(iris$Sepal.Length)
# std_dev_sepal_length
# variance_sepal_length
# 
# # (h) Repeat the above exercises for sepal.width, petal.length, and petal.width
# 
# # Sepal Width
# range_sepal_width <- range(iris$Sepal.Width)
# mean_sepal_width <- mean(iris$Sepal.Width)
# median_sepal_width <- median(iris$Sepal.Width)
# quartiles_sepal_width <- quantile(iris$Sepal.Width, probs = c(0.25, 0.75))
# iqr_sepal_width <- IQR(iris$Sepal.Width)
# std_dev_sepal_width <- sd(iris$Sepal.Width)
# variance_sepal_width <- var(iris$Sepal.Width)
# 
# # Petal Length
# range_petal_length <- range(iris$Petal.Length)
# mean_petal_length <- mean(iris$Petal.Length)
# median_petal_length <- median(iris$Petal.Length)
# quartiles_petal_length <- quantile(iris$Petal.Length, probs = c(0.25, 0.75))
# iqr_petal_length <- IQR(iris$Petal.Length)
# std_dev_petal_length <- sd(iris$Petal.Length)
# variance_petal_length <- var(iris$Petal.Length)
# 
# # Petal Width
# range_petal_width <- range(iris$Petal.Width)
# mean_petal_width <- mean(iris$Petal.Width)
# median_petal_width <- median(iris$Petal.Width)
# quartiles_petal_width <- quantile(iris$Petal.Width, probs = c(0.25, 0.75))
# iqr_petal_width <- IQR(iris$Petal.Width)
# std_dev_petal_width <- sd(iris$Petal.Width)
# variance_petal_width <- var(iris$Petal.Width)
# 
# # (i) Use the built-in function summary on the dataset Iris
# summary(iris)

# #Q5
# calculate_mode <- function(x) {
#   uniq_x <- unique(x)
#   freq_x <- table(x)
#   mode_val <- uniq_x[which.max(freq_x)]
#   return(mode_val)
# }
# 
# data_vector <- c(1, 2, 2, 3, 4, 4, 4, 5)
# mode_result <- calculate_mode(data_vector)
# mode_result
