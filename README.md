 
# Polyphosphate Patent Analysis

This repository contains scripts, data, and figures for analyzing patent activity related to the chemical  synthesis of polyphosphate (polyP). It is part of the supporting material for the publication:
> Contact Information:
> 
Name: Dahbi yassine

Institution: University Mohammed VI Polytechnic Email: yassine.dahbi@um6p.ma

Role: Author
##  Objective

To examine and visualize global patent trends related to polyphosphate production from chemical routes using data from [Lens.org](https://www.lens.org).
##  Data Source and Search Query

Patent data was retrieved from [Lens.org](https://www.lens.org) on [16/05/2025] using the following query: ( ( title:"polyphosphate" OR title:"polyphosphoric acid" ) OR ( abstract:"polyphosphate" OR abstract:"polyphosphoric acid" ) ) AND ( ( title:"chemical synthesis" OR title:"chemical production" OR title:"preparation" OR title:"condensation" OR title:"dehydration" ) ) AND ( ( claim:"phosphate" OR claim:"orthophosphate" OR claim:"condensed phosphate" ) ) 
Results=86 patent ,
The dataset was exported in **CSV format** for analysis in R.
##  Structure

- `data/`: Patent datasets (raw and cleaned)
- `scripts/`: R scripts for analysis and visualization
- `output/`: Exported plots and tables for figures


##  Dependencies

Run the R script with the following packages installed:

```r
install.packages(c("tidyverse", "RColorBrewer"))

## Contents

- `data/`: Raw and processed patent datasets
- `scripts/`: R scripts for cleaning, analysis, and visualization
- `output/`: Exported plots and tables for inclusion in review articles

## Main Analyses

- Filter and analyze chemical synthesis patents
- Visualize trends by year and jurisdiction
- Identify top applicants and technologies

## Requirements
- R (≥ 4.1.0)
- Packages: `dplyr`, `ggplot2`, `tidytext`, `stringr`, `RColorBrewer`


