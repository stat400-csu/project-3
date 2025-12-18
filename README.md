# project-3
Group 3 Project for STAT400 @ CSU
Authors: Andi Mellyn, Jessica Reyes, Hope Winsor

# Notes to Andee

You will find a folder titled "Andee" in the project directory. Inside that folder you will find our final paper titled "MC_Model_Comparison.Rmd". 
You will also see 3 csv files in this folder. These are the model simulated datasets. When you run the code in our paper, the code blocks that simulate the data are set to "eval=FALSE".
They are there for your viewing. The rest of the code in the paper relies on these 3 csv files that are read in. 
This prevents running and knitting from taking too long.

Data simulation was done in four files: 

- MLE.Rmd simulates and saves the MLE data
- RandomForest.Rmd simulates and saves the random forest data
- Ridge_mc_testingdata.Rmd simulates and saves the ridge regression data
- resimulate_extra_metrics.Rmd adds additional evaluation metrics (RMSE and MAE) to all three models

These files do not need to be run to run the paper or presentation because their results are saved to csvs but they remain in the project for reproducibility reasons.

The presentation shown in class and submitted on Canvas is Estimating Truth by Repitition_copy.qmd.


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

