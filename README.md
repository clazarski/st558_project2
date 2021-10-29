# Shares of news stories analsyis repo

## Purpose of Repo
We explored the UCI machine learning database file on shares of news stories to try and predict the number of shares based on a variety of predictor variables. Our repo contains an R Markdown file that automates an exploratory data analysis for each of 6 categories of news cycles. Each web page contains the same analysis format but in context of that specific category. A final model for making predictions is chosen at the end of each analysis page based on the root MSE of the models that were created.

## Libraries used

library("tidyverse")  
library("GGally")  
library("caret")  


## Analyses
The analysis for Business ariticles is available [here](1.html)  
The analysis for Lifestyle ariticles is available [here](2.html)  
The analysis for Entertainment ariticles is available [here](3.html)  
The analysis for Society and Medicine ariticles is available [here](4.html)  
The analysis for Technology ariticles is available [here](5.html)  
The analysis for World ariticles is available [here](6.html)  

## Code to run analyses

The channels are coded to numbers


channel <- c(0,1,2,3,4,5,6)

for (channel in channel) {
  rmarkdown::render(
    'project2.Rmd',params = list(data = channel), output_file = paste0(channel, '.md')
  )
}

