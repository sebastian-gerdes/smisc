#' Calculate the difference in wawter volume given temperature and humidity inside and outside
#'
#' @param temperature_outside temperature outside in degress celsius
#' @param temperature_inside temperature inside in degress celsius
#' @param relative_humidity_outside relative humidity outside in percent
#' @param relative_humidity_inside  relative humidity inside in percent
#' @param volume Volume in cubic meters that is exchanged
#'
#' @return difference in water content before and after changing the air
#' @export
#'
#' @examples
#' diff_water(8, 80, 19, 70)


diff_water <- function(temperature_outside, relative_humidity_outside, temperature_inside, relative_humidity_inside, volume = 300) {
  volume * (absolute_humidity(temperature_outside, relative_humidity_outside) - absolute_humidity(temperature_inside, relative_humidity_inside))
}

