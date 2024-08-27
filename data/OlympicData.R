#uploading code#
olympics <- readr::read_csv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2024/2024-08-06/olympics.csv')

#adding associated packages#
library(tidyverse)
library(gtsummary)
library(broom)

#summaries of the objects#
summary(olympics)
(olympics$medal)

#creating a table using gtsummary#

tbl_summary(
	olympics,
	by = year,
	include = c(year, weight, height
	)
)

# fit a univariate regression#

	tbl_uvregression(
		olympics,
		x = medal,
		include = c(
			 year,weight,height
		),
		method = lm
	)


#create a figure

hist(olympics$year)

#calculating the mean of height per country

mean_height <- mean(olympics$height, na.rm = TRUE)
print(mean_height)


