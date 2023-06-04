library(ggplot2)

data_clean <- read.csv("../data/covid19_data_clean.csv")

ggplot(data_clean, aes(x = date, y = cases)) +

  geom_bar(stat = "identity") +

  labs(title = "COVID-19 Cases in Venezuela",

       x = "Date",

       y = "Number of cases")

ggplot(data_clean, aes(x = date, y = deaths)) +

  geom_line() +

  labs(title = "COVID-19 Deaths in Venezuela",

       x = "Date",

       y = "Number of deaths")
