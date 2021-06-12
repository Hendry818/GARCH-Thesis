# Impact of COVID-19 Outbreak on Asia Stock Market Volatility: A Case Study Hong Kong VIX - Get Index data from Yahoo Finance
#
# This script will import price data for market index Hang Seng Index (or any other) from Yahoo Finance.
# 
# The resulting data set is serialized (saved) in a rds file named data/RAC-GARCH-Data.rds,
# to be used in the next step which is 03-Do_Descriptive_Figures

## MAIN OPTIONS (feel free to edit it)
first_date <- '2019-01-01' # first date in sample ("2000-01-01" in paper)
last_date <- '2020-12-31' # set Sys.Date() for current date ("2020-06-01" in paper)
my_ticker <- '^HSI' # Hang Seng Index ticker (feel free to change to any Ticker of your choice) 
# head over to https://finance.yahoo.com/ for more tickers
series_name <- 'Hang Seng Index' # Name of index/stock that will show up in all plots

## END OPTIONS

# load required libraries
library(quantmod)
library(BatchGetSymbols)
library(tidyverse)

# change directory to where the script located
my_d <- ("C:/Users/hhend/OneDrive/Desktop/Thesis Workspace/Hendry")
setwd(my_d)

# makes sure the directory "data" exists
if (!dir.exists('data')) dir.create('data')

# download price data for "my_ticker"
l_out <- BatchGetSymbols(tickers = my_ticker, 
                         first.date = first_date, 
                         last.date = last_date)

# select columns and calculated log_ret and arim_ret
df_prices <- l_out$df.tickers %>%
  select(ref.date, ticker, price.close) %>%
  mutate(log_ret = log(price.close/dplyr::lag(price.close) ),
         arim_ret = price.close/dplyr::lag(price.close) - 1,
         series_name = series_name) %>%
  na.omit() # remove all NA values

# save data into file
rds_out <- 'data/RAC-GARCH-Data.rds'
write_rds(df_prices, rds_out)
