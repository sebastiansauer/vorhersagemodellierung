library(tidyverse)
library(lubridate)
library(yaml)

yml_file <- "Interna/course-dates.yaml"

dates <- read_yaml(yml_file)

week1 <-  week(ymd(dates$first_day))

weeks_vec <- week(ymd(dates$first_day)):(week(ymd(dates$first_day))+dates$weeks_n)

ymd(weeks_vec)

course_dates <-
  tibble(
    weeks = weeks_vec,
    teaching = TRUE,
    dates_from = lubridate::ymd(lubridate::weeks(weeks_vec))
  )
