library(tidyverse)
data(mtcars)
library(patchwork)

theme_set(theme_minimal())

# Ausreißer ---------------------------------------------------------------


mtcars2 <-
  mtcars %>%
  mutate(is_new = FALSE) %>%
  bind_rows(c(hp = 1000, mpg = 30, is_new = TRUE)) %>%
  select(hp, mpg, is_new)




ggplot(mtcars2, aes(x = hp, y = mpg, color = factor(is_new))) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE)


lm1 <- lm(mpg ~ hp, data = mtcars2)
lm1


mtcars3 <- mtcars

mtcars3[1,1] <- 30
mtcars3[1,4 ] <- 1000


p1 <- ggplot(mtcars, aes(x = hp, y = mpg)) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE) +
  labs(tag = "A") +
  scale_x_continuous(limits = c(0, 1000))

p2 <- ggplot(mtcars3, aes(x = hp, y = mpg)) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE) +
  labs(tag = "B") +
  scale_x_continuous(limits = c(0, 1000))



p1 + p2




# 3D-Regression -----------------------------------------------------------

library(scatterplot3d)  # nomen est omen


d <- mtcars %>%
  select(hp, disp, mpg)
lm1a <- lm(d$mpg ~ d$hp + d$disp)



p3 <- scatterplot3d(d, angle = 299)
p3$plane3d(lm1a)





# Regression mit 2 Prädiktoren --------------------------------------------


lm2 <- lm(mpg ~ hp + factor(am), data = mtcars)


ggplot(mtcars, aes(x = hp, y = mpg, color = factor(am))) +
  geom_point()


library(mosaic)

plotModel(lm2)



library(stargazer)

stargazer(lm2, type = "html")



library(tidyverse)
library(see)
library(parameters)
library(gt)
data(mtcars)


mtcars <-
  mtcars %>%
  mutate(hp100 = hp / 100)


lm1 <- lm(mpg ~ hp100 + am, data = mtcars)
lm1
parameters(lm1)

parameters(lm1) %>%
  select(1,2,4,5) %>%
  gt::gt() %>%
  fmt_number(where(is.numeric))

lm1_res <- plot(parameters(lm1),show_intercept = TRUE)
lm1_res




# DAG ---------------------------------------------------------------------


library(dagitty)

dag1 <- dagitty::dagitty("dag {hp -> mpg}")
dag1
plot(dag1)

dag2 <- dagitty::dagitty("dag {hp -> mpg disp -> mpg am -> mpg}")
dag2
plot(dag2)





# Interaktionseffekt mtcars ------------------------------------------------------

mtcars <-
  mtcars %>%
  mutate(hp100 = hp / 100)

lm3 <- lm(mpg ~ hp100*cyl, data = mtcars)
lm3

ggplot(mtcars, aes(x = hp, y = mpg, color = factor(cyl))) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE) +
  labs(color = "cyl")

lm3_res <- plot(parameters(lm3),show_intercept = TRUE)
lm3_res



parameters(lm3) %>%
  select(1,2,4,5) %>%
  gt::gt() %>%
  fmt_number(where(is.numeric))



# mtcars-Interaktion vereinfacht ------------------------------------------



mtcars2 <-
  mtcars %>%
  mutate(hp100 = hp / 100) %>%
  mutate(hp100_c = hp100 - mean(hp100)) %>%
  mutate(cyl = factor(cyl)) %>%
  filter(cyl != 6)


lm4 <- lm(mpg ~ hp100_c*cyl, data = mtcars2)
lm4

ggplot(mtcars2, aes(x = hp100_c, y = mpg, color = factor(cyl))) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE) +
  labs(color = "cyl")

plot(parameters(lm4),show_intercept = TRUE)




parameters(lm4) %>%
  select(1,2) %>%
  gt::gt() %>%
  fmt_number(where(is.numeric))




# kidiq -------------------------------------------------------------------


kidiq <- read_csv("https://raw.githubusercontent.com/sebastiansauer/Lehre/main/data/kidiq.csv")


m1 <- lm(kid_score ~ mom_hs, data = kidiq)


ggplot(kidiq) +
  aes(x = mom_hs, y = kid_score) +
  geom_jitter(width = 0.1, alpha = .5) +
  geom_abline(slope = coef(m1)[2],
              intercept = coef(m1)[1])  +
  scale_x_continuous(breaks = c(0, 1))

plot(parameters(m1),show_intercept = TRUE)



parameters(m1) %>%
  select(1,2,4,5) %>%
  gt::gt() %>%
  fmt_number(where(is.numeric))


library(rstatix)
kidiq %>%
  get_summary_stats() %>%
  gt() %>%
  fmt_number(where(is.numeric))


# Ein metrischer Prädiktor ------------------------------------------------




m2 <- lm(kid_score ~ mom_iq, data = kidiq)



kidiq %>%
  ggplot(aes(x = mom_iq, y = kid_score)) +
  geom_point(alpha = .7) +
  geom_abline(slope = coef(m2)[2],
              intercept = coef(m2)[1],
              color = "blue")




# Zwei Prädiktoren, keine Interaktion -------------------------------------



m3 <- lm(kid_score ~ mom_iq + mom_hs, data = kidiq)
coef(m3)

library(viridis)

kidiq %>%
  mutate(mom_hs = factor(mom_hs)) %>%
  ggplot(aes(x = mom_iq, y = kid_score, color = mom_hs)) +
  geom_point(alpha = .7) +
  geom_abline(slope = coef(m3)[2],
              intercept = 26,
              size = 1,
              color = viridis(3)[1]) +
  geom_abline(slope = coef(m3)[2],
              intercept = 32,
              color = viridis(3)[3],
              size = 2)  +
  theme(legend.position = "bottom") +
  scale_color_viridis_d()





parameters(m3) %>%
  select(1,2,4,5) %>%
  gt::gt() %>%
  fmt_number(where(is.numeric))



# Zwei Prädiktoren mit Interaktion ----------------------------------------



m4 <- lm(kid_score ~ mom_iq * mom_hs, data = kidiq)
coef(m4)
coef(m3)
kidiq %>%
  mutate(mom_hs = factor(mom_hs)) %>%
  ggplot(aes(x = mom_iq, y = kid_score, color = mom_hs)) +
  geom_point(alpha = .7) +
  geom_abline(slope = coef(m4)[2],
              intercept = coef(m4)[1],
              size = 1,
              color = viridis(3)[1]) +
  geom_abline(slope = coef(m4)[2]+coef(m4)[4],
              intercept = coef(m4)[1] + coef(m4)[3],
              size = 2,
              color = viridis(3)[3]) +
  theme(legend.position = "bottom") +
  scale_color_viridis_d()



parameters(m4) %>%
  select(1,2,4,5) %>%
  gt::gt() %>%
  fmt_number(where(is.numeric))



# Zentrieren --------------------------------------------------------------

kidiq <-
  kidiq %>%
  mutate(
    mom_iq_c = mom_iq - mean(mom_iq))


m5 <- lm(kid_score ~ mom_iq_c + mom_iq_c:mom_hs + mom_hs, data = kidiq)
coef(m5)

kidiq %>%
  mutate(mom_hs = factor(mom_hs)) %>%
  ggplot(aes(x = mom_iq_c, y = kid_score, color = mom_hs)) +
  geom_point(alpha = .7) +
  geom_abline(slope = coef(m5)[2],
              intercept = coef(m5)[1],
              size = 1,
              color = viridis(3)[1]) +
  geom_abline(slope = coef(m5)[2]+coef(m5)[4],
              intercept = coef(m5)[1] + coef(m5)[3],
              size = 2,
              color = viridis(3)[3]) +
  theme(legend.position = "bottom") +
  scale_color_viridis_d()



parameters(m4) %>%
  select(1,2,4,5) %>%
  gt::gt() %>%
  fmt_number(where(is.numeric))



# Modelle vergleichen -----------------------------------------------------



comp_m3_m4 <- compare_parameters(m3, m4)
plot(comp_m3_m4)




# Prädiktorenrelevanz -----------------------------------------------------


library(patchwork)

kidiq <- kidiq %>%
  mutate(kid_score_z = ((kid_score - mean(kid_score)) / sd(kid_score)))




p1 <- kidiq %>%
    ggplot(aes(x = kid_score)) +
    geom_density()




p2 <-  kidiq %>%
    ggplot(aes(x = kid_score_z)) +
    geom_density()



p1 + p2




kidiq <- kidiq %>%
  mutate(mom_iq_z = scale(mom_iq),
         mom_age_z = scale(mom_age))


m6 <- lm(kid_score ~ mom_iq_z + mom_age_z, data = kidiq)


parameters(m6) %>%
  select(1,2) %>%
  gt::gt() %>%
  fmt_number(where(is.numeric))



m6 <- lm(kid_score ~ mom_iq_z + mom_age_z, data = kidiq)
