#' Create slides from .qmd files
#'
#' @param x an rmd/or qmd-file
#' @param ... further arguments passed to renderthis::to_pdf()
#'
#' @return both a .html and a .pdf version
#' @export
create_slides <- function(x, ...){

  if (missing(x) && requireNamespace('rstudioapi', quietly = TRUE)) {
    x = rstudioapi::getSourceEditorContext()[['path']]
    if (is.null(x)) stop('Cannot find an open document in the RStudio editor')
    if (x == '') stop('Please save the current document')
    if (!grepl('[.]R?md$|[.]q?md$', x, ignore.case = TRUE)) stop(
      'The current active document must be an rmd or qmd document. I saw "',
      basename(x), '".'
    )
  }

  renderthis::to_pdf(x, ...)

}
