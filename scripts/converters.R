temperature_f <- 72

fahr_to_kelvin <- function(temperature_f) {
  kelvin <- (temperature_f - 32) * (5/9) + 273.15
  return(kelvin)
}
kelvin_to_celcius <- function(temp) {
  celcius <- (temp - 32) * (5/9) - 273.15
  return(celcius)
}
