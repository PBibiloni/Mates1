carrega_llibreries = function() {
  library(ggplot2)
    update_geom_defaults("line", list(size=1.5, color="#CC0000"))
    update_geom_defaults("point", list(size=3, color="#CC0000"))
    theme_update(
    line=element_line(size=1),
    plot.title=element_text(size=20, face="bold", hjust=0.5), 
    axis.text.x=element_text(size=14), 
    axis.text.y=element_text(size=14),
    axis.title.x=element_text(size=18),
    axis.title.y=element_text(size=18))
  library(latex2exp) # For displaying equations
  library(lubridate) # For date format
  library(xtable)   # For exporting tables as latex
}

guarda_ggplot = function(tema, nom) {
  path_dir = paste("../img/T", tema, "/", sep="")
  path_file = paste(path_dir, nom, sep="")
  dir.create("../img/", showWarnings = FALSE)
  dir.create(path_dir, showWarnings = FALSE)
  ggsave(path_file)
}
