# project-3
Group 3 Project for STAT400 @ CSU
Authors: Andi Mellyn, Jessica Reyes, Hope Winsor

## Model Simulation:
Predictors:

- Number of candidate predictors (P): (Simulation factor 2 in Table 1)
    - 4
    - 8 
    - 12 
- Distribution of predictor variables: (Simulation factor 5 in Table 1)
    - MVN(0.0)
    - MVN(0.5) 
- Predictor effects: (Simulation factor 6 in Table 1)
    - Equal effect $\beta_1 = ... = \beta_P$
    - 1 strong $\frac{1}{3}\beta_1 = \beta_2 = ... = \beta_P$
    - 1 noise $\beta_1 = 0, \beta_2 = ... = \beta_P$
    - 1/2 noise $\beta_1 = ... = \beta_{P/2} = 0, \beta_{P/2+1}=...=\beta_P$

results in $3 \times 2 \times 4$ factor study with 24 models

## Model Analysis:

- Ridge - Andi
- Maximum likelihood - Jessica 
- Random Forest - Hope 