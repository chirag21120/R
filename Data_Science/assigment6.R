# Q1 
library(dplyr)
data <- data.frame(
  Country = sample(LETTERS[1:4],20,replace = T),
  Continent = rep(c("Asia", "Europe", "Africa", "Americas"), each = 5),
  Year = sample(2000:2019, 20, replace = TRUE),
  LifeExp = rnorm(20, mean = 75, sd = 5),
  Pop = sample(1000000:15000000, 20),
  gdpPerc = runif(20, min = 1000, max = 40000)
)
data
#1
unique_countries_per_continent <- data %>%
  group_by(Continent) %>%
  summarize(UniqueCountries = n_distinct(Country))
unique_countries_per_continent
#2
lowest_gdp_europe <- data %>%
  filter(Continent == "Europe") %>%
  arrange(gdpPerc) %>%
  slice(1)
lowest_gdp_europe
#3
average_life_expectancy_per_continent <- data %>%
  group_by(Continent, Year) %>%
  summarize(AvgLifeExp = mean(LifeExp), .groups = "drop")
average_life_expectancy_per_continent

#4
top_5_gdp_countries <- data %>%
  group_by(Country) %>%
  summarize(TotalGDP = sum(gdpPerc)) %>%
  arrange(desc(TotalGDP)) %>%
  top_n(5)
top_5_gdp_countries

#5
life_expectancy_above_80 <- data %>%
  filter(LifeExp >= 80)
life_expectancy_above_80

#6

strongest_correlations <- data %>%
  group_by(Country) %>%
  filter(n() > 1) %>%  # Select countries with data for multiple years
  summarize(Correlation = cor(LifeExp, gdpPerc)) %>%
  arrange(abs(Correlation)) %>%
  top_n(10)
strongest_correlations

#7
highest_avg_population_per_continent <- data %>%
  group_by(Continent, Year) %>%
  summarize(AvgPopulation = mean(Pop),.groups="drop") %>%
  arrange(desc(AvgPopulation)) %>%
  filter(Continent != "Asia")
highest_avg_population_per_continent

#8
consistent_population_countries <- data %>%
  group_by(Country) %>%
  summarize(StdDevPopulation = sd(Pop)) %>%
  arrange(StdDevPopulation) %>%
  top_n(3)
consistent_population_countries

#9
decreased_pop_increased_life_exp <- data %>%
  group_by(Country) %>%
  filter(all(Pop[-n()] >= Pop[-1] & LifeExp[-1] < LifeExp[-n()]))
decreased_pop_increased_life_exp

#Q2
#1

data <- data.frame(
  MedID = 1:10,
  Med_Name = c("Med1", "Med2", "Med3", "Med4", "Med5", "Med6", "Med7", "Med8", "Med9", "Med10"),
  Company = c("CompanyA", "CompanyB", "CompanyA", "CompanyC", "CompanyD", "CompanyB", "CompanyE", "CompanyD", "CompanyA", "CompanyF"),
  Manf_year = sample(2010:2020, 10, replace = TRUE),
  Exp_date = sample(2021:2025, 10, replace = TRUE),
  Quantity_in_stock = sample(100:1000, 10),
  Sales = sample(10:100, 10)
)

write.csv(data, "DataSet.csv", row.names = FALSE)

#2
read_data <- read.csv("DataSet.csv")
head(read_data, 4)

#3
tail(read_data, 4)

#4
correlation <- cor(read_data$Quantity_in_stock, read_data$Exp_date)
correlation

#5
total_sales_per_year <- aggregate(Sales ~ Manf_year, data = data, sum)
total_sales_per_year
barplot(total_sales_per_year$Sales, names.arg = total_sales_per_year$Manf_year, 
        xlab = "Year of Manufacturing", ylab = "Total Sales", col = "blue", main = "Sales by Year of Manufacturing")
#6
company_multiple_meds <- read_data %>%
  group_by(Company) %>%
  filter(n() > 1) %>%
  distinct(Company)
company_multiple_meds

#7
available_meds <- unique(read_data$Med_Name)
available_meds

#8
medicines_expiring <- read_data %>%
  filter(Exp_date <= 2023)
medicines_expiring

#9
average_stock <- mean(read_data$Quantity_in_stock)
average_stock

#10
plot(read_data$Manf_year, read_data$Sales, xlab = "Manufacturing Year", ylab = "Sales")
abline(lm(Sales ~ Manf_year, data = read_data), col = "red")
