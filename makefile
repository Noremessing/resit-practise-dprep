all: data/reviews.csv data/listings.csv gen/analysis/temp/df_listings_merged.csv gen/analysis/output/histogram.pdf gen/analysis/output/plot.pdf

data/reviews.csv data/listings.csv: src/data-preparation/download_data.R
	R --vanilla < src/data-preparation/download_data.R
	
gen/analysis/temp/df_listings_merged.csv: src/data-preparation/filter_merge_data.R
	R --vanilla < src/data-preparation/filter_merge_data.R
	
gen/analysis/temp/df_aggregated.csv: src/data-preparation/aggregate_data.R
	R --vanilla < src/data-preparation/aggregate_data.R
	
gen/analysis/output/histogram.pdf: src/analysis/histogram_data.R
	R --vanilla < src/analysis/histogram_data.R

gen/analysis/output/plot.pdf: src/analysis/plot_data.R
	R --vanilla < src/analysis/plot_data.R
	