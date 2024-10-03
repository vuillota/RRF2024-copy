### Reproducible Research Fundamentals -  Main R Script

# Create environment
# renv::init()

# As a first time user please run renv::restore() to restore the 
# environment needed to run this code
# This function only needs to be run once
# renv::restore()

# Load libraries ---- 

# Load necessary libraries
library(haven)  # for reading .dta files
library(dplyr)  # for data manipulation
library(tidyr)  # for reshaping data
library(stringr) # work with strings
library(labelled) # use labels
library(gtsummary) # tables
library(gt) # tables
library(ggplot2) #graphs
library(tidyverse) # working with tidy data
library(modelsummary) # creating summary tables
library(stargazer) # writing nice tables
library(RColorBrewer) # color palettes


# Recording libraries installed to renv
renv::snapshot()

# Set data path ----

# this is the second root of the project, the first root is the code whose directory 
# is already being handled by the rstudio project.

data_path <- "C:/Users/wb622894/OneDrive - WBG/Desktop/RRF - public/Course Materials/DataWork/Data"


# Run the R scripts ----

source("R/Code/01-processing-data.R")

source("R/Code/02-constructing-data.R")

source("R/Code/03-analyzing-data.R")
