# Overview

A program collecting data on average daily petrol prices across all 50 U.S. states (and the District of Columbia) and aggregating it in CSV format. First-time runs of the program create the spreadsheet, and subsequent runs populate the spreadsheet with additional data.

*Note: Changes in website HTML table structure may affect functionality of this script. As of when the script was last used (17 January 2020), all features were functioning properly.*

<br/>

# Files

## Data

**PetrolData** *(.csv)* - Spreadsheet containing 17 days of AAA average price data on 3 petrol grades (regular, mid-grade, and premium) and diesel for all 50 US states and the District of Columbia.

## Scripts

**PetrolPrices** *(.R)* - Script that scrapes petrol price data from AAA and writes it to the main spreadsheet.
