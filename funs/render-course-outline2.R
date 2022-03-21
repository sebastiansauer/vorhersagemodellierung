render_course_outline2 <- function(master_table, header_level = 2, small_table = FALSE){


  render_section <- function(d = master_table, name, id){


    if (class(d[[name]]) != "list") {

      cat("\n")
      cat(paste0(str_c(rep("#", header_level + 1), collapse = "")," ", name, " \n"))
      cat("\n")
      out <- as.character(unname(d[[name]][id]))
      cat(out)
      cat("\n")
    }

    if (class(master_table[[name]]) == "list") {

      out <- d[[name]][[1]][[id]]

      if (!is.null(out)){
        cat(paste0(str_c(rep("#", header_level + 1), collapse = "")," ", name, " \n"))
        cat("\n")
        for (i in out) {
          cat(paste0("- ", i))
          cat("\n")
        }

        cat("\n")
        cat("\n")
      }
    }

    cat("\n")

  }


  chapters <-
    master_table %>%
    pull(Titel) %>%
    simplify()

  if (small_table == FALSE){

    for (i in seq_along(chapters)){

      # oberabschnitt:

      cat(paste0(str_c(rep("#", header_level), collapse = "")," ", chapters[i], "\n"))
      cat("\n")


      # unterabschnitte, eine Ebene tiefer:
      render_section(name = "KW", id = i)
      render_section(name = "ID", id = i)
      render_section(name = "Kurswoche", id = i)
      render_section(name = "Wochenbeginn_Datum", id = i)
      render_section(name = "Lernziele", id = i)
      render_section(name = "Vorbereitung", id = i)
      render_section(name = "Literatur", id = i)
      render_section(name = "Skript", id = i)
      render_section(name = "Videos", id = i)
      render_section(name = "Syntax", id = i)
      render_section(name = "Fallstudien", id = i)
      render_section(name = "Aufgaben", id = i)
      render_section(name = "Vertiefung", id = i)
      render_section(name = "Hinweise", id = i)


      # Leerzeilen, bevor neues Thema anfängt
      cat("\n")
      cat("\n")

    }
  } else {
    master_table %>%
      filter(Lehre == TRUE) %>%
      select(Kurswoche, KW, Titel, Wochenbeginn_Datum) %>%
      gt::gt()

  }

}
