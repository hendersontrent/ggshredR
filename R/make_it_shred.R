#' Add 1980s guitar lord as a plot watermark
#'
#' @rdname make_it_shred
#' @export
#' 
make_it_shred <- function(shred_lord = c("Vai", "Satriani", "Gilbert", "Malmsteen",
                                         "Hammett", "Sambora", "Friedman", "Becker")){
  if(shred_lord == "Vai"){
  img <- png::readPNG(system.file("img", "vai.png", package = "ggshredR"), FALSE)
  img_trans <- matrix(rgb(img[,,1],img[,,2],img[,,3],img[,,4] * 0.2), nrow = dim(img)[1])
  
  shred <- grid::rasterGrob(img_trans)
  
  the_theme <- ggplot2::annotation_custom(shred, xmin = -Inf, xmax = Inf,
                                          ymin = -Inf, ymax = Inf)
  
  return(the_theme)
  }
  
  if(shred_lord == "Satriani"){
    img <- png::readPNG(system.file("img", "satriani.png", package = "ggshredR"), FALSE)
    img_trans <- matrix(rgb(img[,,1],img[,,2],img[,,3],img[,,4] * 0.2), nrow = dim(img)[1])
    
    shred <- grid::rasterGrob(img_trans)
    
    the_theme <- ggplot2::annotation_custom(shred, xmin = -Inf, xmax = Inf,
                                            ymin = -Inf, ymax = Inf)
    
    return(the_theme)
  }
  
  if(shred_lord == "Gilbert"){
    img <- png::readPNG(system.file("img", "gilbert.png", package = "ggshredR"), FALSE)
    img_trans <- matrix(rgb(img[,,1],img[,,2],img[,,3],img[,,4] * 0.2), nrow = dim(img)[1])
    
    shred <- grid::rasterGrob(img_trans)
    
    the_theme <- ggplot2::annotation_custom(shred, xmin = -Inf, xmax = Inf,
                                            ymin = -Inf, ymax = Inf)
    
    return(the_theme)
  }
  
  if(shred_lord == "Malmsteen"){
    img <- png::readPNG(system.file("img", "malmsteen.png", package = "ggshredR"), FALSE)
    img_trans <- matrix(rgb(img[,,1],img[,,2],img[,,3],img[,,4] * 0.2), nrow = dim(img)[1])
    
    shred <- grid::rasterGrob(img_trans)
    
    the_theme <- ggplot2::annotation_custom(shred, xmin = -Inf, xmax = Inf,
                                            ymin = -Inf, ymax = Inf)
    
    return(the_theme)
  }
  
  if(shred_lord == "Hammett"){
    img <- png::readPNG(system.file("img", "hammett.png", package = "ggshredR"), FALSE)
    img_trans <- matrix(rgb(img[,,1],img[,,2],img[,,3],img[,,4] * 0.2), nrow = dim(img)[1])
    
    shred <- grid::rasterGrob(img_trans)
    
    the_theme <- ggplot2::annotation_custom(shred, xmin = -Inf, xmax = Inf,
                                            ymin = -Inf, ymax = Inf)
    
    return(the_theme)
  }
  
  if(shred_lord == "Sambora"){
    img <- png::readPNG(system.file("img", "sambora.png", package = "ggshredR"), FALSE)
    img_trans <- matrix(rgb(img[,,1],img[,,2],img[,,3],img[,,4] * 0.2), nrow = dim(img)[1])
    
    shred <- grid::rasterGrob(img_trans)
    
    the_theme <- ggplot2::annotation_custom(shred, xmin = -Inf, xmax = Inf,
                                            ymin = -Inf, ymax = Inf)
    
    return(the_theme)
  }
  
  if(shred_lord == "Friedman"){
    img <- png::readPNG(system.file("img", "friedman.png", package = "ggshredR"), FALSE)
    img_trans <- matrix(rgb(img[,,1],img[,,2],img[,,3],img[,,4] * 0.2), nrow = dim(img)[1])
    
    shred <- grid::rasterGrob(img_trans)
    
    the_theme <- ggplot2::annotation_custom(shred, xmin = -Inf, xmax = Inf,
                                            ymin = -Inf, ymax = Inf)
    
    return(the_theme)
  }
  
  if(shred_lord == "Becker"){
    img <- png::readPNG(system.file("img", "becker.png", package = "ggshredR"), FALSE)
    img_trans <- matrix(rgb(img[,,1],img[,,2],img[,,3],img[,,4] * 0.4), nrow = dim(img)[1])
    
    shred <- grid::rasterGrob(img_trans)
    
    the_theme <- ggplot2::annotation_custom(shred, xmin = -Inf, xmax = Inf,
                                            ymin = -Inf, ymax = Inf)
    
    return(the_theme)
  }
  
}