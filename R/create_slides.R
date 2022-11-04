#' Create slides from .qmd files
#'
#' @param ... a .qmd-file
#'
#' @return both a .html and a .pdf version
#' @export
create_slides <- function(...){
  renderthis::to_pdf(...)
}
