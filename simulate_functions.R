# title: "Simulate Functions"
# Script for simulation functions

### -------------------- simulate_logit ----------------------- ###
# creates artificial datasets from a logistic regression model

simulate_logit <- function(N, P, rho, beta_pattern) {
  
  # Predictor distribution 
  # Correlation = rho (0 or 0.5)
  Sigma <- matrix(rho, P, P)
  diag(Sigma) <- 1
  
  X <- mvrnorm(n = N, mu = rep(0, P), Sigma = Sigma)
  
  # Predictor effects 
  if (beta_pattern == "equal") {
    beta <- rep(0.5, P)
    
  } else if (beta_pattern == "strong") {
    beta <- c(1.0, rep(0.2, P-1))      # 1 strong effect
    
  } else if (beta_pattern == "noise") {
    beta <- c(0, rep(0.3, P-1))        # first predictor is noise
    
  } else if (beta_pattern == "halfnoise") {
    beta <- c(rep(0, P/2), rep(0.3, P/2))  # first half noise
    
  } else {
    stop("Unknown beta pattern")
  }
  
  # Linear predictor + logistic link
  eta <- X %*% beta
  pi  <- 1/(1 + exp(-eta))
  
  # Binary outcome from Bernoulli
  y <- rbinom(N, size = 1, prob = pi)
  
  data.frame(y = y, X)
}


### ---------------------- evaluate_model ------------------------- ###
# computes the AUC and Brier scores to assess the predictive accuracy 
# of the model

evaluate_model <- function(fit, dat) {
  
  probs <- predict(fit, type = "response")
  
  auc_val <- auc(dat$y, probs)
  brier <- mean((dat$y - probs)^2)
  
  tibble::tibble(
    # AUC: Area Under the ROC Curve
    AUC = as.numeric(auc_val),
    # brier: measure of the accuracy of probabilistic predictions
    Brier = brier
  )
}


### ---------------------- evaluate_model ------------------------- ###
# fits a standard logistic regression model with maximum likelihood estimation

fit_logistic_mle <- function(dat) {
  glm(y ~ ., data = dat, family = binomial)
}

