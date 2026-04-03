 
# Polyphosphate Patent Analysis

This repository contains scripts, data, and figures for analyzing patent activity related to the chemical  synthesis of polyphosphate (polyP). It is part of the supporting material for the publication:Comparative Polyphosphate Accumulation in Yeast and Microalgae: Implications for Phosphorus Recovery and Environmental Biotechnology

> 
Name: Dahbi yassine

Institution: University Mohammed VI Polytechnic 
Email: yassine.dahbi@um6p.ma

Role: Author
##  Objective

To examine and visualize global patent trends related to polyphosphate production from chemical routes using data from [Lens.org](https://www.lens.org).
##  Data Source and Search Query

Patent data was retrieved from [Lens.org](https://www.lens.org) on [16/05/2025] using the following query: ( ( title:"polyphosphate" OR title:"polyphosphoric acid" ) OR ( abstract:"polyphosphate" OR abstract:"polyphosphoric acid" ) ) AND ( ( title:"chemical synthesis" OR title:"chemical production" OR title:"preparation" OR title:"condensation" OR title:"dehydration" ) ) AND ( ( claim:"phosphate" OR claim:"orthophosphate" OR claim:"condensed phosphate" ) ) 
Results=86 patent ,
The dataset was exported in **CSV format** for analysis in R.
## 📂 Structure

- `data/`: Patent datasets (raw and cleaned)  
- `scripts/`: R scripts for analysis and visualization  
- `output/`: Exported plots and tables for figures  

---

## ⚙️ Dependencies

Run the R script with the following packages installed:

```r
install.packages(c("tidyverse", "RColorBrewer"))
```

---

## 📊 Main Analyses

- Filter and analyze chemical synthesis patents  
- Visualize trends by year and jurisdiction  
- Identify top applicants and technologies  

---

## 🧪 Requirements

- R (≥ 4.1.0)  
- Packages: `dplyr`, `ggplot2`, `tidytext`, `stringr`, `RColorBrewer`  

---

## 📖 Citation

If you use this dataset or code, please cite:

> **Dahbi, Y.; Benhida, R.; Danouche, M. (2026).**  
> *Comparative polyphosphate accumulation in yeast and microalgae: Implications for phosphorus recovery and environmental biotechnology.*  
> *Reviews in Environmental Science and Biotechnology*, **25**, 23.  
> https://doi.org/10.1007/s11157-026-09775-5  

---

### 🔗 Repository Citation

> **Dahbi, Y. (2025).**  
> *Polyphosphate in yeast vs microalgae_bibliometrics: Data and code repository (2000–2025).*  
> GitHub. https://github.com/yassin292/polyP-bibliometric-review
