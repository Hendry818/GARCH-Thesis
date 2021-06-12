# Impact of COVID-19 Outbreak on Asia Stock Market Volatility: A Case Study Hong Kong VIX - ARMA(1,1) Model Fitting
#
# This script will fit an ARMA(1,1) model to the Hang Seng Index Returns

# load required libraries
library(forecast)
library(lmtest)

# change directory to where the script located
my_d <- ("C:/Users/hhend/OneDrive/Desktop/Thesis Workspace/Hendry")
setwd(my_d)

# get price data
df_prices <- read_rds('data/RAC-GARCH-Data.rds')

#Fit an ARMA(1,1) models to the return
mydata.arima101 <- arima(df_prices$log_ret, order = c(1,0,1))
coeftest(mydata.arima101)
checkresiduals(mydata.arima101)

#Best Fit Model for Log Returns of ARMA
bestdata.arima <- auto.arima(df_prices$log_ret, trace = TRUE)