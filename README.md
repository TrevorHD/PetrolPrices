# Overview

This program scrapes average daily petrol prices across all 50 U.S. states (and the District of Columbia) and aggregates them in CSV format; all of the data are obtained from the AAA petrol price website [here](https://gasprices.aaa.com/state-gas-price-averages/). First-time runs of the program create the spreadsheet, and subsequent runs populate the spreadsheet with additional data. Example data after running the program for 17 consecutive days have been included; all dollar amounts are rounded to the nearest tenth of a cent.

**Note**: Changes in website HTML table structure may affect functionality of this script. As of when the script was last used (17 January 2020), all features were functioning properly.

<br/>

# Files

**PetrolData** *(.csv)* - Spreadsheet containing daily average prices of 3 petrol grades (regular, mid-grade, and premium) and diesel for all 50 US states and the District of Columbia.

**PetrolPrices** *(.R)* - Script that scrapes petrol price data from AAA and writes it to the main spreadsheet.
