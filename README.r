# r-excercise-7
This is an practice excercise from codecademy.


library(readr)
library(dplyr)


sales <- read_csv("sales.csv")
targets <- read_csv("targets.csv")
head(sales)
head(targets)


men_women <- read_csv("men_women_sales.csv")


head(men_women)
summary(men_women)


all_data <- sales %>%
 inner_join(targets) %>%
 inner_join(men_women)

all_data
summary(all_data)


results <- all_data %>%
 filter(revenue > target) %>%
 filter(women > men)

results
summary(results)
