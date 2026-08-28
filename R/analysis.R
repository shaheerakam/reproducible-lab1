# Toy analysis for Reproducible Computing Lab 1 (R version).
# Mirrors src/analysis.py so the two workflows are comparable.

library(readr)
library(dplyr)
library(ggplot2)

df <- read_csv("data/toy_data.csv", show_col_types = FALSE)

summary_tbl <- df %>%
  group_by(group) %>%
  summarise(
    n    = n(),
    mean = mean(biomarker),
    sd   = sd(biomarker),
    .groups = "drop"
  )
print(summary_tbl)

dir.create("results", showWarnings = FALSE)
p <- ggplot(df, aes(x = group, y = biomarker)) +
  geom_boxplot() +
  labs(title = "Biomarker by group", y = "biomarker")
ggsave("results/biomarker_by_group_R.png", p, width = 6, height = 4, dpi = 120)
cat("Wrote figure to results/biomarker_by_group_R.png\n")
