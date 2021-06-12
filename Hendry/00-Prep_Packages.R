# Impact of COVID-19 Outbreak on Asia Stock Market Volatility: A Case Study Hong Kong VIX - R Script for Preparing Computer
#
# This script will install all missing dependencies for the R code related to article
# If this is the first time running a R script, 
# make sure you got the right software: 
#
# 1) [required] Install latest R version <https://www.r-project.org/>
# 2) [optional] Install latest RStudio <https://rstudio.com/products/rstudio/download/>
# 
# Preferably, you should execute all scripts in RStudio. If you use other IDE (or none), 
# make sure to change the path for setwd() in all scripts.
#
# WINDOWS users: 1) Simply execute this script to install required libraries

# list of required packages
required_pkgs <- c('tidyverse'      , 'ggtext'    , 'rugarch', 
                   'BatchGetSymbols', 'GetBCBData', 'cowplot', 
                   'purrr'          , 'tidyr'     , 'FinTS'  , 
                   'scales'         , 'texreg'    , 'knitr'  , 
                   'kableExtra'     , 'forecast'  , 'writexl',
                   'quantmod'       , 'xts'       , 'PerformanceAnalytics',
                   'moments'        , 'GetBCBData', 'forecast',
                   'lmtest')

# change directory to where the script located
my_d <- ("C:/Users/hhend/OneDrive/Desktop/Thesis Workspace/Hendry")
setwd(my_d)

# finds installed pkgs from R session
installed_pkgs <- installed.packages()

# find missing packages
missing_pkgs <- required_pkgs[!(required_pkgs %in% installed_pkgs[, 1])]

if (length(missing_pkgs) == 0 ) {
  message("No missing dependencies. You are good to go!")
} else {
  install.packages(missing_pkgs)
  
  message("All packages installed. You are good to go!")
  
}

message("You should now execute the first script: 01-HSI_Index_Data.R")


