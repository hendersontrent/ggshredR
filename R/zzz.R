#' Sets default geom colours to be Orbisant brand compliant
#' @importFrom ggplot2 update_geom_defaults theme_set
.onAttach <- function(libname, pkgname) {
  
ggplot2::update_geom_defaults("bar", list(fill = "#32CD30"))
ggplot2::update_geom_defaults("col", list(fill = "#32CD30"))
ggplot2::update_geom_defaults("point", list(colour = "#32CD30"))
ggplot2::update_geom_defaults("line", list(colour = "#32CD30"))
ggplot2::update_geom_defaults("path", list(colour = "#32CD30"))
ggplot2::update_geom_defaults("smooth", list(colour = "#F652A0"))
ggplot2::update_geom_defaults("boxplot", list(colour = "#32CD30"))
ggplot2::update_geom_defaults("segment", list(colour = "#32CD30"))
ggplot2::update_geom_defaults("abline", list(colour = "#F652A0"))
ggplot2::update_geom_defaults("hline", list(colour = "#F652A0"))
ggplot2::update_geom_defaults("vline", list(colour = "#F652A0"))
ggplot2::update_geom_defaults("rug", list(colour = "#F652A0"))
ggplot2::update_geom_defaults("density", list(colour = "#32CD30", fill = "#32CD30", alpha = 0.5))
ggplot2::update_geom_defaults("pointrange", list(colour = "#F652A0"))
ggplot2::update_geom_defaults("linerange", list(colour = "#F652A0"))
ggplot2::update_geom_defaults("errorbar", list(colour = "#F652A0"))
ggplot2::update_geom_defaults("crossbar", list(colour = "#F652A0"))
ggplot2::update_geom_defaults("text", list(colour = "#F652A0"))
ggplot2::update_geom_defaults("label", list(colour = "#F652A0"))

ggplot2::theme_set(theme_shredR())

invisible()

}
