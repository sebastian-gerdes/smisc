#' Vectorized version of the \command{switch} command
#'
#' @param EXPR bla
#' @param ... bla
#'
#' @return absolute humidity contained in 1 m^3 in l
#' @export
#'
#' @examples
#' x <- rep(c('a', 'b', 'c'), each = 3)
#' switch_v(x, 
#'          a = 'first', 
#'          b = 'second',
#'          'other')

switch_v <- Vectorize(function(EXPR, ...) {
  return(switch(EXPR = EXPR, ...))
})
