# httr::GET timeout (seconds)
# TIMEOUT <- 2

# time between requests (i.e. throttling)
# DELAY <- 0.5

# URL base for various Nominatim operations
lookup_base <- "http://nominatim.openstreetmap.org/lookup"
reverse_base <- "https://us1.locationiq.org/v1/reverse.php"
search_base <- "https://us1.locationiq.org/v1/search.php"

.onAttach <- function(libname, pkgname) {
  packageStartupMessage("API Service (c) LocationIQ, Data (c) OpenStreetMap contributors, ODbL 1.0. http://www.openstreetmap.org/copyright")
  packageStartupMessage("Sign-up to get a free Developer token: https://locationiq.org")
  options(NOMINATIM.TIMEOUT=5)
  options(NOMINATIM.DELAY=0.5)
  options(NOMINATIM.search_base="https://us1.locationiq.org/v1/search.php")
}
