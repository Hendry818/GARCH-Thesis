# GARCH-Thesis

This is the repository for R code associated with the paper "Impact of COVID-19 Outbreak on Asia Stock Market Volatility: A Case Study Hong Kong VIX", submitted to Xiamen University Malaysia.

## Available R scripts

| Filename                              | Description                                                                                        |
|---------------------------------------|----------------------------------------------------------------------------------------------------|
| 00-Prep_Packages.R                    | Setup computer by installing all required R packages. **This is a mandatory step.**                |
| 01-HSI_Index_Data.R                   | Using the internet, imports a dataset of prices of the Hang Seng Index                             |
| 02-Unit_Root_Test.R                   | Performs Classical Unit Root Test in the Data                                                      |
| 03-Do_Descriptive_Figure.R            | Creates and saves the descriptive figure presented in the paper,                                   |
| 04-ARMA_Model.R                       | Fits an ARMA(1,1) Model to the returns series and calculates the best ARMA(AR,MA) Model.                                                                                                                                                                                            |
| 05-Do_ARCH_Test.R                     | Performs the arch test in the data.                                                                |
| 06-Estimating_GARCH.R                 | Estimate a Standard GARCH(1,1), GJR-GARCH(1,1), and E-GARCH(1,1) and exporting the estimation results into a HTML file                                                                                                                                                              |
| 07-Finding_Best_GARCH.R               | The scripts predict the best ARMA(AR,MA)-GARCH(p,q) model for the data set, including changes in variance equation and also the distribution parameter by producing the result in the research paper                                                                         |
| 08-Simulating_GARCH.R                 | Simulates the best GARCH models produced in 06-Finding_Best_GARCH.R and plot simulated paths and probabilities by producing the result in the research paper                                                                                                                        |

## Eviews Data

| Filename                                          | Description                                                                                        |
|---------------------------------------------------|----------------------------------------------------------------------------------------------------|
| Returns.xlsx                                      | Hang Seng Index (HSI) Full Sample Data Price and Returns                                           |
| Pre COVID-19 Data and During COVID-19 Data.xlsx   | Hang Seng Inde (HSI) Which Is Divided Into 2 Portion Price And Returns                             |
| GJR-GARCH Dummy Data.xlsx                         | Hang Seng Index (HSI) Full Returns With Dummy Addition                                             |
| GJR-GARCH Dummy Results.png                       | Results Projected From Eviews                                                                      |
| Correlogram Squared Residuals GJR-GARCH Dummy.png | Diagnostic Test Result Projected From Eviews                                                       |
| Hendry's Handbook GJR-GARCH.docx                  | Hendry's Trial And Error Microsoft Word ( Results Here Are Just For Improvement )                  |

## Instructions

1) Install latest version of R ([link](https://cloud.r-project.org/) )

2) Install latest version of RStudio ([link](https://rstudio.com/products/rstudio/download/))

3) Download [zip file](https://github.com/msperlin/GARCH-RAC/archive/master.zip) from this repository.

4) Unzip the content of zip file in a personal folder

5) Run first script _00-Prepare_Computer.R_ to install all dependencies of the code. For that, in RStudio, open R script file and press _control + shift + enter_

6) Execute other scripts in root folder in order to reproduce all results from the paper

If these steps don't work for you, please [let us know](https://github.com/msperlin/GARCH-RAC/issues) by reporting OS (windows/linux/mac), R version and error code (if any). 
