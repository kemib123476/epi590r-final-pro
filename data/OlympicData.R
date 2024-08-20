#uploading code#
olympics <- readr::read_csv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2024/2024-08-06/olympics.csv')

library(tidyverse)
library(gtsummary)

#summaries of the objects#
summary(olympics)

#creating a table using gtsummary#

tbl_summary(
	olympics,
	by = year,
	include = c(year, weight, height
	)
)
