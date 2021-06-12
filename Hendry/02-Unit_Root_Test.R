# Impact of COVID-19 Outbreak on Asia Stock Market Volatility: A Case Study Hong Kong VIX - Classical Unit Root Test
#
# This script will performed the 3 classical unit root test for market Hang Seng index (or any other) from Yahoo Finance

# load required libraries
library(tseries)
library(tidyverse)
library(quantmod)
library(PerformanceAnalytics)

# change directory to where the script located
my_d <- ("C:/Users/hhend/OneDrive/Desktop/Thesis Workspace/Hendry")
setwd(my_d)

# get price data
df_prices <- read_rds('data/RAC-GARCH-Data.rds')

## MAIN OPTIONS (feel free to edit it)
fullsampleprice <- df_prices$price.close
fullsamplereturn <- df_prices$log_ret

#Pre COVID-19 Data 
startprecovid <- as.Date("2019-01-01")
endprecovid <- as.Date("2020-1-21")
getSymbols("^HSI", SRC = "yahoo", from = startprecovid, to = endprecovid)
HSIPriceprecovid <- as.xts( data.frame(HSI = HSI[, "HSI.Close"]))
logreturnprecovid <- Return.calculate(HSI$HSI.Close, method = "log")
logreturnprecovid <- logreturnprecovid[-1]

#COVID-19 Data
startcovid <- as.Date("2020-01-22")
endcovid <- as.Date("2020-12-31")
getSymbols("^HSI", SRC = "yahoo", from = startcovid, to = endcovid)
HSIPricecovid <- as.xts( data.frame(HSI = HSI[, "HSI.Close"]))
logreturncovid <- Return.calculate(HSI$HSI.Close, method = "log")
logreturncovid <- logreturncovid[-1]

## END OPTIONS

#Perform the Classical Unit Root Test
# 1. Augmented-Dickey Fuller Test (ADF)
# 2. Phillips-Perron Test (PP)
# 3. Kwiatkowski-Phillips-Schmidt-Shin (KPSS)

#Full Sample Price
adf.test(fullsampleprice)
pp.test(fullsampleprice)
kpss.test(fullsampleprice)

#Full Sample Return
adf.test(fullsamplereturn)
pp.test(fullsamplereturn)
kpss.test(fullsamplereturn)

#Pre COVID-19
adf.test(logreturnprecovid)
pp.test(logreturnprecovid)
kpss.test(logreturnprecovid)

#COVID 19
adf.test(logreturncovid)
pp.test(logreturncovid)
kpss.test(logreturncovid)

