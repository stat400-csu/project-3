# Load the shared simulated data
simulated_data <- readRDS("data/simulated_data.rds")

# inspect the simulate_logit data
str(simulated_data)
head(simulated_data)

# test
test_data <- readRDS("results_files/ridge_mc_results.rds")
head(test_data)
