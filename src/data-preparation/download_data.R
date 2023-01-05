library(tidyverse)

# 1 DATA PREPARATION

## 1.1 DOWNLOAD THE DATA

get_data <- function(url, filename){
  download.file(url = url, destfile = paste0(filename, ".csv"))
}

url_listings <- "http://data.insideairbnb.com/italy/lazio/rome/2022-09-11/visualisations/listings.csv"
url_reviews <- "http://data.insideairbnb.com/italy/lazio/rome/2022-09-11/visualisations/reviews.csv"

dir.create('data')
get_data(url_listings, "data/listings")
get_data(url_reviews, "data/reviews")