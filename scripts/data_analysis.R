library(httr)

library(jsonlite)

url <- "https://disease.sh/v3/covid-19/historical/Venezuela?lastdays=all"

response <- GET(url)

data <- fromJSON(rawToChar(response$content))

data_df <- data.frame(date = names(data$timeline$cases),

                      cases = unlist(data$timeline$cases),

                      deaths = unlist(data$timeline$deaths))

write.csv(data_df, "data/covid19_data.csv", row.names = FALSE)
