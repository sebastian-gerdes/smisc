#' Calculate the absolute humidity in 1 m^3 dependence of the temperature and the relative humidity
#'
#' @param temperature temperate in degress celsius
#' @param relative_humidity relative humidity in percent
#'
#' @return absolute humidity contained in 1 m^3 in l
#' @export
#'
#' @examples
#' absolute_humidity(20, 50)
absolute_humidity <- function(temperature, 
                              relative_humidity = 100) {
  return(0.001 * 
           6.112 * 
           exp(17.67 * temperature / (temperature + 243.5)) * 
           relative_humidity * 2.1674 / 
           (273.15 + temperature))
}
