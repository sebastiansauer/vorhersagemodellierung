
# Setup -------------------------------------------------------------------


library(tidyverse)
library(gridExtra)
data(stats_test, package = "pradadata")

theme_set(theme_minimal())





# Modellieren,  Beispiel --------------------------------------------------








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





# Vorhersagefehler --------------------------------------------------------




set.seed(42)
N      <- 100
beta   <- 0.4
intercept <- 1


sim <- data_frame(
  x = rnorm(N),
  error1 = rnorm(N, mean = 0, sd = .5),
  error2 = rnorm(N, mean = 0, sd = 2),
  y1 = intercept + x*beta + error1,
  y2 = intercept + x*beta + error2,
  pred = 1 + x*beta
)



p1 <- ggplot(sim, aes(x, y1)) +
  geom_abline(intercept = intercept, slope = beta, colour = "red") +
  geom_point(colour = "blue") +
  geom_linerange(aes(ymin = y1, ymax = pred), colour = "grey40") +
  ylim(-6,+6) + labs(title = "A - wenig Vorhersagefehler")


p2 <- ggplot(sim, aes(x, y2)) +
  geom_abline(intercept = intercept, slope = beta, colour = "red") +
  geom_point(colour = "blue") +
  geom_linerange(aes(ymin = y2, ymax = pred), colour = "grey40") +
  ylim(-6,+6) + labs(title = "B - viel Vorhersagefehler")


grid.arrange(p1, p2, ncol = 2)





# Gerade als Modell -------------------------------------------------------




stats_test %>%
  slice_head(n = 2) %>%
  ggplot(aes(x = self_eval, y = score)) +
  geom_point() +
  geom_smooth(method = "lm")



# Mtcars ------------------------------------------------------------------

library(latex2exp)

mtcars %>%
  ggplot(aes(x = hp, y = mpg)) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE)


lm1 <- lm(mpg ~ hp, data = mtcars)
lm1



p1 <- mtcars %>%
  ggplot(aes(x = hp, y = mpg)) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE) +
  annotate(geom = "point",
           x = mtcars$hp[1],
           y = mtcars$mpg[1],
           color = "red",
           size = 6,
           alpha = .5
           ) +
  labs(title = TeX("\\hat{y}=22.6, x = 110"),
       subtitle = paste0("y = ", round(mtcars$mpg[1], 1)))

p1



mtcars %>%
  ggplot(aes(x = hp, y = mpg)) +
  geom_point() +
  geom_vline(xintercept = 140, linetype = "dashed", color = "grey60")




pred1 <- predict(lm1, newdata = tibble(hp = mtcars$hp[1]))
pred1
mtcars$hp[1]
mtcars$mpg[1]


mtcars %>%
  ggplot() +
  geom_point(aes(x = hp, y = mpg)) +
  geom_smooth(aes(x = hp, y = mpg),
              method = "lm", se = FALSE) +
  annotate(geom = "point",
           x = mtcars$hp[1],
           y = mtcars$mpg[1],
           color = "grey60",
           size = 6,
           alpha = .5
  ) +
  labs(title = TeX("\\hat{y}=22.6, x = 110"),
       subtitle = paste0("y = ", round(mtcars$mpg[1], 1))) +
  annotate(geom = "linerange", x = mtcars$hp[1],
           y = pred1,
           ymin = pred1, ymax = mtcars$mpg[1],
           color = "red")




pred2 <- predict(lm1, newdata = tibble(hp = 140))
pred2






mtcars %>%
  ggplot() +
  geom_point(aes(x = hp, y = mpg)) +
  geom_smooth(aes(x = hp, y = mpg),
              method = "lm", se = FALSE) +
  annotate(geom = "point",
           x = 140,
           y = 22,
           color = "red",
           size = 6,
           alpha = .5
  ) +
  annotate(geom = "point",
           x = 140,
           y = 22,
           color = "black",
           size = 1
  ) +
  labs(title = TeX("\\hat{y}=20.6, x = 140"),
       subtitle = paste0("y = ", 22)) +
  annotate(geom = "linerange", x = 140,
           y = pred2,
           ymin = pred2, ymax = 22,
           color = "red")






# Modellgüte --------------------------------------------------------------

# R2 gleich Null:
set.seed(1)
d <-
  tibble(x = rnorm(100),
         y = rnorm(100))

ggplot(d, aes(x, y)) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE)


# R2 gleich 1:


d2 <- tibble(
  x = 1:10,
  y = 1:10)

ggplot(d2, aes(x, y)) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE)







