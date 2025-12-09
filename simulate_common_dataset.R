# title: "Simulate Common Dataset"
# Script for a dataset set that can be used by all the models for comparison

### ONLY RUN THIS SCRIPT IF YOU WANT TO CHANGE THE PARAMETERS FOR THE SHARED DATASET ###

### -------------------- simulate_common_dataset ----------------------- ###

library(tidyverse)

source("simulate_functions.R")

set.seed(400)

# simulate the dataset using logistic regression
dat_common <- simulate_logit(
  N = 1000, 
  P = 8, 
  rho = 0.5,
  beta_pattern = "strong"
)

if(!dir.exists("data")) dir.create("data")

# store the data
saveRDS(dat_common, file = "data/simulated_data.rds")

