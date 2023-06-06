# Analysis xxxxx
# Start date: 2023-06-06
# Author: Alan
# 
# Purpose: import and prepare data for analysis
# 
# Last changed: (see git history)
# Change log: (recommended if not using version control)

data <- read_csv(here("data", "raw", "insurance_with_date.csv"))

prepped <- data |> 
  mutate(
    across(c(sex, region), factor),
    gt2_children = children > 2,
    smokes = smoker == "yes",
    date_6m = date + months(6)
  )


