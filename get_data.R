# this file simply gets the data. If you want to get the raw data or read more
# about the functions used, read the comments on "googlesheets.R"


source("googlesheets.R")

bioblitzdata <- create_full_data() %>% 
  clean_full_data() %>% 
  add_species_data()

#this saves the data as an R object if you wish:
saveRDS(object = bioblitzdata,file = "bioblitzdata",version = 3)
