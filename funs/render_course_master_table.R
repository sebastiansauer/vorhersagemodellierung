library(tidyverse)


course_dates <- read_csv("interna/course_dates.csv")
course_topics_l <- yaml::read_yaml(paste0(here::here(), "/", "Interna/modul-inhalte.yaml"))


course_topics <-
  tibble(
    ID = map_dbl(course_topics_l, "id")
  ) %>%
  mutate(Titel = course_topics_l %>% map_chr("Titel")) %>%
  mutate(Lernziele = list(course_topics_l %>% map("Lernziele"))) %>%
  mutate(Vorbereitung = list(course_topics_l %>% map("Vorbereitung"))) %>%
  mutate(Literatur = list(course_topics_l %>% map("Literatur"))) %>%
  mutate(Videos = list(course_topics_l %>% map("Videos"))) %>%
  mutate(Skript = list(course_topics_l %>% map("Skript"))) %>%
  mutate(Aufgaben = list(course_topics_l %>% map("Aufgaben"))) %>%
  mutate(Vertiefung = list(course_topics_l %>% map("Vertiefung"))) %>%
  mutate(Hinweise = list(course_topics_l %>% map("Hinweise")))


master_table <-
  course_dates %>%
  left_join(course_topics, by = "ID")

write_rds(course_dates, file = "Interna/course-topics.rds")
write_rds(master_table, file = "Interna/course-master-table.rds")






