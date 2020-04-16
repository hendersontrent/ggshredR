
# ggshredR

Colour palettes and plotting themes for shredR 80s guitar theme.
Incredible example below of Racer X
![](https://github.com/hendersontrent/ggshredR/blob/master/racerx.jpg)

## Installation

You can install `ggshredR` from GitHub by running the following:

``` r
devtools::install_github("hendersontrent/ggshredR")
```

## Theme shredR

The theme works by adding the function call to the end of your `ggplot2`
code:

``` r
library(ggplot2)
library(ggshredR)

ggplot(mpg, aes(x = cyl, y = cty)) +
  geom_point(size = 3) +
  labs(title = "Cylinders vs city miles per gallon") +
  theme_shredR(grids = TRUE)
```

![](README_files/figure-gfm/unnamed-chunk-3-1.png)<!-- -->

The colour palette built into the package is presented below:

``` r
library(scales)

scales::show_col(ggshredR:::shredR_palette)
```

![](README_files/figure-gfm/unnamed-chunk-4-1.png)<!-- -->

## This palette can be used for colouring (and filling) plots

Use `scale_colour_shredR()` to apply the theme for colour parameters.

``` r
ggplot(mpg, aes(x = displ, y = cty, colour = drv, size = cyl)) +
geom_point(alpha = 0.5) +
labs(title = "Engine disp vs city mpg by drivetrain and cylinders") +
scale_colour_shredR() +
theme_shredR(grids = TRUE)
```

![](README_files/figure-gfm/unnamed-chunk-5-1.png)<!-- -->

Fitting regression models such as generalised additive models (GAM) to
charts also looks very shreddy.

``` r
library(mgcv)

ggplot(mpg, aes(x = displ, y = cty, colour = drv, size = cyl)) +
geom_smooth(aes(group = 1), formula = y ~ s(x), method = "gam", size = 1) +
geom_point(alpha = 0.5) +
labs(title = "Engine disp vs city mpg by drivetrain and cylinders") +
scale_colour_shredR() +
theme_shredR(grids = TRUE)
```

![](README_files/figure-gfm/unnamed-chunk-6-1.png)<!-- -->

And `scale_fill_shredR()` to apply the theme for fill parameters.

``` r
library(dplyr)
library(magrittr)

mpg %>%
group_by(drv) %>%
summarise(cty = mean(cty)) %>%
ungroup()%>%
ggplot(aes(x = reorder(drv, -cty), y = cty, fill = drv)) +
geom_col() +
labs(title = "Average city miles per gallon by drivetrain") +
scale_fill_shredR() +
theme_shredR()
```

![](README_files/figure-gfm/unnamed-chunk-7-1.png)<!-- -->
