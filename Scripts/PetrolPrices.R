##### Load necessary libraries ----------------------------------------------------------------------------

library(XML)
library(tidyverse)





##### Retrieve data ---------------------------------------------------------------------------------------

# Function to scrape and parse petrol price data
Data.Scrape <- function(){
  
  # Download page as HTML
  download.file("https://gasprices.aaa.com/state-gas-price-averages/", destfile = "test.html")
  
  # Parse HTML document
  page <- htmlParse("test.html")
  
  # Read any instance of <table> into data frame
  # In this case, there's only one
  data <- data.frame(readHTMLTable(page))
  
  # Remove dollar sign from prices and convert them to numerics
  for(i in 2:ncol(data)){
    data[, i] <- as.numeric(str_remove_all(data[, i], "[$]"))}
  
  # Get day and month
  DayMonth <- setNames(data.frame(rep(str_split(date(), " ")[[1]][2], nrow(data)),
                                  as.integer(rep(str_split(date(), " ")[[1]][3], nrow(data)))),
                       c("Month", "Day"))
  
  # Convert months from abbreviations to numerics
  DayMonth$Month <- match(DayMonth$Month, month.abb)
  
  # Rename columns; add day and month to data frame
  names(data) <- c("State", "Regular", "MidGrade", "Premium", "Diesel")
  data <- cbind(DayMonth, data)
  
  # Return data frame
  return(data)}





##### Write data ------------------------------------------------------------------------------------------

# Function to write data to either a new or existing csv
Data.Write <- function(newsheet = FALSE){
  
  # If first time collecting data
  if(newsheet == TRUE){
    
    # Set current data as scrape results
    data.current <- Data.Scrape()}
  
  # If adding subsequent data
  if(newsheet == FALSE){
    
    # Set current data as data from the existing csv
    data.current <- read.csv("PetrolData.csv")
    
    # Scrape data and add it to the existing csv
    data.current <- rbind(Data.Scrape(), data.current)
    data.current <- arrange(data.current, State, Month, Day)}
  
  # Write data frame to csv
  write.csv(data.current, file = "PetrolData.csv", row.names = FALSE)}





##### Subsequent data retrieval ---------------------------------------------------------------------------

# Run the following code to add data to the existing dataset
# Use newsheet = TRUE if this is the first time collecting the data
Data.Scrape()
Data.Write(newsheet = FALSE)
