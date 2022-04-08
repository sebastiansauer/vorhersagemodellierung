# Skript-Syntax Thema 05




# Setup -------------------------------------------------------------------


library(tidyverse)
data(mtcars)
theme_set(theme_minimal())



# Streudiagramm -----------------------------------------------------------


mtcars %>%
  ggplot(aes(x = hp, y = mpg)) +
  geom_point()


mtcars %>%
  ggplot(aes(x = hp, y = mpg)) +
  geom_point() +
  geom_smooth(se = FALSE)

mtcars %>%
  ggplot(aes(x = hp, y = mpg)) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE)




# Abweichungsrechteck -----------------------------------------------------




mtcars$id <- 1:nrow(mtcars)

id_chosen <- 31

ggplot(mtcars) + xlab("PS_zahl") +
  ylab("Spriverbrauch") +
   geom_hline(yintercept = mean(mtcars$mpg), linetype = "dashed") +
   geom_vline(xintercept = mean(mtcars$hp), linetype = "dashed") +
   annotate("rect",xmin = mean(mtcars$hp), ymin = mean(mtcars$mpg),
            xmax = mtcars$hp[id_chosen], ymax = mtcars$mpg[id_chosen], alpha = .1,
            color = "red", fill = "red") +
   annotate("text", x = 350, y = 11,
            label = "X[i] - bar(X)", parse = T, colour = "Red") +
   annotate("text", x = 350, y = 13,
            label = "Y[i] - bar(Y)", parse = T, colour = "Red") +
   geom_point(aes(x = hp, y = mpg)) +
   geom_point(x = mtcars$hp[id_chosen], y = mtcars$mpg[id_chosen], color = "red",
              alpha = .9, size = 4)





(ggplot(tips) + xlab("Rechnung") +
    ylab("Trinkgeld") +
    geom_hline(yintercept = mean(tips$tip), linetype = "dashed") +
    geom_vline(xintercept = mean(tips$total_bill), linetype = "dashed") +
    annotate("rect",xmin = mean(tips$total_bill), ymin = mean(tips$tip),
             xmax = tips$total_bill[24], ymax = tips$tip[24], alpha = .1,
             color = "red", fill = "red") +
    annotate("text", x = 30, y = 8,
             label = "X[i] - bar(X)", parse = T, colour = "Red") +
    annotate("text", x = 42, y = 5.5,
             label = "Y[i] - bar(Y)", parse = T, colour = "Red") +
    geom_point(aes(x = total_bill, y = tip)) +
    geom_point(x = tips$total_bill[24], y = tips$tip[24], color = "red",
               alpha = .1, size = 4) +
    theme(axis.title=element_text(size=28),
          plot.title = element_text(size = rel(4))))



