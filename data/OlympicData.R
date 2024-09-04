#uploading code#
olympics <- readr::read_csv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2024/2024-08-06/olympics.csv')

#adding associated packages#
library(tidyverse)
library(gtsummary)
library(broom)

#creating a table of descriptive statistics 3 variables by year#

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


#creating a figure of athlete ages in the olympics

hist(olympics$age)

#calculating the mean of a sample of the athletes heights

new_mean <- function(x) {
	n <- length(x)
	mean_val <- sum(x) / n
	return(mean_val)
}

x <- c(180,170,185,185)

new_mean(x = c(180,170,185,185))
mean(c(180,170,185,185))




