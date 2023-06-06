# Analysis xxxxx
# Start date: 2023-06-06
# Author: Alan
# 
# Purpose: plot
# 
# Last changed: (see git history)
# Change log: (recommended if not using version control)

hist <- prepped |> ggplot(
  aes(x = bmi, 
      fill = region)
  ) +
  geom_histogram() +
  facet_wrap(vars(region))

ggsave(here("output", "figures", "histogram.png"), hist)

