# 2.0 REPORTING

## 2.1 CREATE HISTOGRAM

# import the relevant dataset
df_listings_merged <- read_csv("gen/analysis/temp/df_listings_merged.csv")

dir.create('gen/analysis/output')
pdf("gen/analysis/output/histogram.pdf")
pdf("histogram.pdf")
hist(df_listings_merged$num_reviews,
     main = "The distribution of the number of reviews per listing\nwhere number of reviews is between 2 and 100",
     xlab = "Number of reviews",
     col = "gray",
     breaks="FD",
     prob = TRUE)

lines(density(df_listings_merged$num_reviews), col="red")
dev.off()

