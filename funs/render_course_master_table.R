library(tidyverse)


course_dates <- read_csv("interna/course_dates.csv")
course_topics_l <- yaml::read_yaml(paste0(here::here(), "/", "Interna/modul-inhalte.yaml"))


course_topics <-
  tibble(
    ID = map_dbl(course_topics_l, "id")
  ) %>%
  mutate(Titel = modul_zsfg %>% map_chr("Titel")) %>%
  mutate(Lernziele = list(modul_zsfg %>% map("Lernziele"))) %>%
  mutate(Vorbereitung = list(modul_zsfg %>% map("Vorbereitung"))) %>%
  mutate(Literatur = list(modul_zsfg %>% map("Literatur"))) %>%
  mutate(Videos = list(modul_zsfg %>% map("Videos"))) %>%
  mutate(Skript = list(modul_zsfg %>% map("Skript"))) %>%
  mutate(Aufgaben = list(modul_zsfg %>% map("Aufgaben"))) %>%
  mutate(Vertiefung = list(modul_zsfg %>% map("Vertiefung"))) %>%
  mutate(Hinweise = list(modul_zsfg %>% map("Hinweise")))


master_table <-
  course_dates %>%
  left_join(course_topics, by = "ID")

write_rds(course_dates, file = "Interna/course-topics.rds")
write_rds(master_table, file = "Interna/course-master-table.rds")






