# Thema 04



# Häufigkeitsverteilung ---------------------------------------------------



library(tidyverse)
library(gt)

mtcars %>%
  count(cyl) %>%
  gt()


mtcars %>%
  ggplot() +
  geom_bar(aes(x = cyl)) + theme_minimal()





# Histogramm --------------------------------------------------------------



data(flights, package = "nycflights13")


flights %>%
  filter(dep_delay < 60) %>%
  ggplot() +
  aes(x = dep_delay) +
  geom_histogram()



data(penguins, package = "palmerpenguins")


penguins %>%
  ggplot() +
  aes(x = flipper_length_mm) +
  geom_histogram()


wo_men <- read_csv("https://raw.github.com/sebastiansauer/modar/master/datasets/wo_men.csv")


wo_men %>%
  filter(between(height, 150,210)) %>%
  ggplot() +
  aes(x = height) +
  geom_histogram()



data("SaratogaHouses", package = "mosaicData")


SaratogaHouses %>%
  ggplot() +
  aes(x = price) +
  geom_histogram() +
  theme_minimal()

SaratogaHouses %>%
  ggplot() +
  aes(x = price) +
  geom_histogram(bins = 1000) +
  theme_minimal()




# Verteilungsformen -------------------------------------------------------


### plot distributions with different curtosis



library(fGarch)



### draw leptocurtic curve
x <- seq(from = -10, to = 10, by = .1)
y <- dcauchy(x)


my.df <- data.frame(x, y)

my.md <- qcauchy(p = .5)



ggplot(my.df, aes(x = x)) + stat_function(fun = dcauchy) +
  #   annotate("text", x = 3, y = .1, label = paste0("MW = 0"), hjust = 0) +
  #   annotate("text", x = 3, y = .05, label = paste0("Md = ",round(my.md, 2)),
  #            hjust = 0)
  scale_x_continuous(breaks=NULL) +
  theme_minimal() +
  scale_y_continuous(breaks = NULL) +
  labs(y="")





### draw platocurtic curve
x <- seq(from = -3, to = 3, by = .1)
y <- 1-x^6


my.df <- data.frame(x, y)

my.md <- qcauchy(p = .5)


ggplot(my.df, aes(x = x)) + stat_function(fun = dt, args = list(df = 3)) +
  coord_cartesian(xlim = c(-3, 3))+ scale_x_continuous(breaks=NULL) +
  theme_minimal() +
  scale_y_continuous(breaks = NULL) +
  labs(y="")





# Normalverteilung --------------------------------------------------------







ggplot(data = data.frame(X = -5:5), aes(X)) +
  stat_function(fun = dnorm, args = list(mean = 0, sd = 1)) +
  #geom_vline(xintercept = 0, linetype = "dashed", color = "blue") +
  xlab("X") + ylab("") +
  theme_minimal() +
  scale_y_continuous(breaks = NULL) +
  scale_x_continuous(breaks = NULL)




ggplot(data = data.frame(X = seq(-5, 5, length.out = 1000)), aes(X)) +
  stat_function(fun = dnorm, args = list(mean = 0, sd = 1)) +
  stat_function(fun = dnorm, args = list(mean = -2, sd = 2), color = "grey40") +
  stat_function(fun = dnorm, args = list(mean = +1, sd =.5), color = "grey80") +
  #geom_vline(xintercept = 0, linetype = "dashed", color = "blue") +
  xlab("X") + ylab("") +
  theme_minimal() +
  scale_y_continuous(breaks = NULL) +
  scale_x_continuous(breaks = NULL)





# Quartile ----------------------------------------------------------------




df2 <- data_frame(id = 1:100,
                  groesse = seq(from = 150, to = 210, length.out = 100))

#quantile(x = df2$groesse)

df3 <- data_frame(id = 1:3,
                  label = c("Q1", "Q2", "Q3"),
                  yval = c(165, 180, 195),
                  xval = c(25, 50, 75))

df2 %>%
  mutate(quartile = cut_number(groesse, 4)) %>%
  ggplot(aes(y = groesse, x= id)) +
  geom_col(aes(fill = quartile)) +
  geom_vline(xintercept = c(25, 50, 75)) +
  geom_label(data = df3,
             aes(x = xval,
                 y = yval,
                 label = label),
             fontface = "bold") +
  labs(x = "Nummer der Person",
       y = "Größe",
       fill = "Viertel") +
  theme_minimal() +
  theme(legend.position = "bottom")





# Verteilungsfunktion -----------------------------------------------------


ggplot(data.frame(x = c(-3, 3)), aes(x = x)) +
  stat_function(fun = pnorm) +
  theme_minimal() +
  labs(x = "X", y = "kumulierter Anteil")





# Quantil vs. Verteilung --------------------------------------------------

library(nomnoml)

p1 <-
"
[<sender> Messwert ] -> [Verteilungsfunktion]
[Verteilungsfunktion] -> [<receiver> Wahrscheinlichkeit]
"

nomnoml(p1, png = "img/F-fun.png")

p2 <-
"
[<sender> Wahrscheinlichkeit] -> [Quantilsfunktion]
[Quantilsfunktion] -> [<receiver> Messwert]
"

nomnoml(p2, png = "img/q-fun.png")
