---
title: "Medical Malpractice"
author: "Elsie Yi"
date: "16 October 2023"
output: html_document
---

```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
```

# Medical Malpractice


Nearly [50% of physicians age 55 and older have reported being sued](https://www.ama-assn.org/practice-management/sustainability/1-3-physicians-has-been-sued-age-55-1-2-hit-suit) according to the American Medical Association and in [2022, 31% of physicians have been sued](https://www.ama-assn.org/practice-management/sustainability/medical-liability-market-research). 
With the prevalence of these malpractice suits I was interested to see if there is any association between the amount received by the patient and whether they had a private attorney, what type of insurance they had (private, uninsured, or government), severity of damage, as well as age and gender of patient. 
I am also curious to see if there is a greater proportion of suits given the type of specialty of the physician.

## Dataset

Data is from [Kaggle](https://www.kaggle.com/datasets/gabrielsantello/medical-malpractice-insurance-dataset/) and the analysis is completed in R. 
Visualization was completed with Tableau.
```{r}
mm <- read.csv("/Users/elsieyi/Documents/Projects/Kaggle/Medical Malpractice/medicalmalpractice.csv")
library(ggplot2)
```

### Initial notes regarding data
```{r}
summary(mm)
```

Malpractice suit amount ranges from 
```{r}
min(mm$Amount)-max(mm$Amount)
```

## Analyses
### Private Attorney
```{r}
pa <- glm(Amount ~ Private.Attorney + Insurance + Private.Attorney*Insurance, data = mm)
summary(pa)
```
