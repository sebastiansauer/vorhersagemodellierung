library(tidyverse)
library(gridExtra)
data(stats_test, package = "pradadata")

theme_set(theme_minimal())

# stats_test <- read.csv("data/stats_test.csv")

stats_test <-
  stats_test %>%
  filter(between(score, 0.25, 1))

stats_test %>%
  ggplot(aes(y = score, x = self_eval)) +
  geom_jitter(alpha = .3) +
    ggtitle("A") -> p1

p2 <- p1 + geom_smooth(method = "lm", se = FALSE, size = 2) + ggtitle("B")

grid.arrange(p1, p2, nrow = 1)
