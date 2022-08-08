#' Hide answer slides in quarto revealjs-presentations
#'
#' @param x An .Rmd file
#' @param ...
#'
#' @return a HTML file
#' @export
#'
hide_answer <- function(x, ...){

  quarto::quarto_render(input = x,
                        ...,
                        pandoc_args = "--lua-filter=filters/hideanswer.lua")

}


#' Show answer slides in quarto revealjs-presentations
#'
#' @param x An .Rmd file
#' @param ...
#'
#' @return a HTML file
#' @export
#'
show_answer <- function(x, ...){

  quarto::quarto_render(input = x,
                        ...)

}


