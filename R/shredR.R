#' General colour palette imports as hex codes

shredR_palette <- c(
  "#F652A0",
  "#FD7F20",
  "#FF2768",
  "#32CD30",
  "#FEDE00",
  "#43B0F1",
  "#C8F4F9"
)

#' shredR Colour and Fill Scales
#'
#' @seealso [ggplot2::scale_colour_discrete] [ggplot2:scale_fill_discrete]
#' @inheritDotParams ggplot2::discrete_scale
#' @name shredR_pal
#'
#' @return the shredR palette
#' @export
#'
NULL

shredR_pal <- function(){
  scales::manual_pal(shredR_palette)
}

#' @rdname shredR_pal
#' @export
scale_colour_shredR <- function(...) {
  ggplot2::discrete_scale("colour", "shredR", shredR_pal(), ...)
}

#' @rdname shredR_pal
#' @export
scale_color_shredR <- scale_colour_shredR


#' @rdname shredR_pal
#' @export
scale_fill_shredR <- function(...) {
  ggplot2::discrete_scale('fill', 'shredR', shredR_pal(), ...)
}

#' Style general plot features according to the shredR theme
#'
#' @rdname theme_shredR
#' @export

theme_shredR <- function(grids = FALSE){
  the_theme <- ggplot2::theme_bw() +
    ggplot2::theme(legend.position = "bottom",
          axis.text = ggplot2::element_text(colour = "#F652A0"),
          axis.title = ggplot2::element_text(colour = "#F652A0", face = "bold"),
          panel.border = ggplot2::element_blank(),
          panel.grid.minor = ggplot2::element_blank(),
          panel.grid.major = ggplot2::element_blank(),
          axis.line = ggplot2::element_line(colour = "#F652A0"),
          panel.background = ggplot2::element_rect(fill = "#C8F4F9", colour = "#C8F4F9"),
          plot.background = ggplot2::element_rect(fill = "#C8F4F9", colour = "#C8F4F9"),
          legend.background = ggplot2::element_rect(fill = "#C8F4F9", colour = "#C8F4F9"),
          legend.box.background = ggplot2::element_rect(fill = "#E7F2F8", colour = "#C8F4F9"),
          legend.key = ggplot2::element_rect(fill = "#C8F4F9", colour = "#C8F4F9"),
          legend.text = ggplot2::element_text(colour = "#F652A0"),
          legend.title = ggplot2::element_text(colour = "#F652A0"),
          plot.title = ggplot2::element_text(colour = "#F652A0"),
          plot.subtitle = ggplot2::element_text(colour = "#F652A0"),
          plot.caption = ggplot2::element_text(colour = "#F652A0"),
          strip.background = ggplot2::element_rect(fill = "#C8F4F9", colour = "#F652A0"),
          strip.text = ggplot2::element_text(colour = "#F652A0"))
  if(grids){
    the_theme <- the_theme +
      ggplot2::theme(panel.grid.major = ggplot2::element_line(colour = "white"))
  }
  
  return(the_theme)
}
