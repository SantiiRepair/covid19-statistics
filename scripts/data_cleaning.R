library(dplyr)

data <- read.csv("data/covid19_data_api.csv")

data_clean <- data %>%

  select(date, cases, deaths) %>%

  mutate(date = as.Date(date, "%Y-%m-%d"))

write.csv(data_clean, "data/covid19_data_clean.csv", row.names = FALSE)
