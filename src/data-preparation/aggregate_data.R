## 1.3 AGGREGATE THE DATA 

library(dplyr)
library(tidyr)
library(readr)

reviews <- read_csv("data/reviews.csv")
listings <- read_csv("data/listings.csv")

# group the number of reviews by month and neighborhood group.(2)
df_aggregated <- df_merged %>%
  mutate(month = format(date, "%m"), year = format(date, "%Y")) %>%
  group_by(year, month, neighbourhood) %>%
  summarise(num_reviews = n())

# create date column
df_aggregated$date <- as.Date(paste0(df_aggregated$year, "-", df_aggregated$month, "-01"))

write.csv(df_aggregated, "gen/analysis/temp/df_aggregated.csv")
