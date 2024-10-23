#' Calculate the difference in wawter volume given temperature and humidity inside and outside
#'
#' @param T_out temperature outside in degress celsius
#' @param T_in temperature inside in degress celsius
#' @param h_out relative humidity inside in percent
#' @param h_in relative humidity outside in percent
#' @param volume Volume that is exchanged
#'
#' @return difference in water content before and after changing the air
#' @export
#'
#' @examples
#' diff_water(8, 80, 19, 70)


diff_water <- function(T_out, h_out, T_in, h_in, volume = 300) {
  volume * (absolute_humidity(T_out, h_out) - absolute_humidity(T_in, h_in))
}

