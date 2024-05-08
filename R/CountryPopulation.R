#' Function
#'
#' this function generates a graph of the population estimate for an inputted country
#'
#' @param country Country name as a string
#' @return A line graph showing the population estimate
#' @examples
#' # example code
#' CountryPopulation('United States of America')
#' @export
#'

CountryPopulation <- function(countryName) {
  CountryData <- WorldPopulation %>%
    filter(Country == countryName)

  if(is.numeric(countryName)){
    stop('Error: input is a number')
  }

  if(any(WorldPopulation$Country == countryName) == FALSE) {
    stop('Error: country not found')
  }
  #
  # ggplot(data=CountryData, aes(x=Year, y=population, group = countryName)) +
  #   geom_line() +
  # scale_x_discrete(breaks = seq(1950,2020, by=15)) +
  #   theme_minimal() +
  #   # theme(axis.text.x = element_text(angle=45, hjust=1)) +
  #    labs(y = "Population In Thousands", x = "Years 1950-2020",
  #        title = countryName)
}
