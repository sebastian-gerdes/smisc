#' Show the name and the value of a variable
#' 
#' Can be used for debugging purposes
#'
#' @param x variable to be shown
#'
#' @return no return value
#' @export
#'
#' @examples
#' x <- 10
#' show_var(x)


show_var <- function (x) {cat(substitute(x), '=', paste(x, collapse = ' '), '\n')}
