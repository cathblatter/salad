#' Create slides from .qmd files
#'
#' @param file an rmd/or qmd-file
#' @param ... further arguments passed to renderthis::to_pdf()
#'
#' @return both a .html and a .pdf version
#' @export
create_slides <- function(file, ...){

  # addin-code adapted from yihui/xaringan

  # check if file is open to work as an addin
  if (missing(file) && requireNamespace('rstudioapi', quietly = TRUE)) {
    file = rstudioapi::getSourceEditorContext()[['path']]
    if (is.null(file)) stop('Cannot find an open document in the RStudio editor')
    if (file == '') stop('Please save the current document')
    if (!grepl('[.]R?md$|[.]q?md$', file, ignore.case = TRUE)) stop(
      'The current active document must be either .Rmd or .qmd. I saw "',
      basename(file), '".'
    )
  }

  file = xfun::normalize_path(file)

  # now pass the file to renderthis for slides
  renderthis::to_pdf(file, ...)

}
