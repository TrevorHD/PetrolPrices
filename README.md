# Overview

This program scrapes average daily petrol prices across all 50 U.S. states (and the District of Columbia) and aggregates them in spreadsheet format; first-time runs of the program create the spreadsheet, and subsequent runs populate the spreadsheet with additional data. Example data after running the program for 17 consecutive days has been included.

<br/>

# Files

**PetrolData** *(.csv)* - Spreadsheet containing daily average prices of 3 petrol grades and diesel for all 50 US states. All of the data are scraped from [here](https://gasprices.aaa.com/state-gas-price-averages/).

**PetrolPrices** *(.R)* - Script that scrapes online petrol price data and writes it to the main spreadsheet.
