# title: "Simulate Common Dataset"
# Script for a dataset set that can be used by all the models for comparison

### ONLY RUN THIS SCRIPT IF YOU WANT TO CHANGE THE PARAMETERS FOR THE SHARED DATASET ###

### -------------------- simulate_common_dataset ----------------------- ###

library(tidyverse)

source("simulate_functions.R")

set.seed(400)

# one representative scenario
EPV <- 10
event_frac <- 0.5
P <- 8 
rho <- 0.5
beta_pattern <- "strong"

# simulate the dataset using logistic regression
dat_common <- simulate_logit(
  EPV = EPV,
  event_frac = event_frac,
  P = P,
  rho = rho,
  beta_pattern = beta_pattern
)

if(!dir.exists("data")) dir.create("data")

# store the data
saveRDS(dat_common, file = "data/simulated_data.rds")

