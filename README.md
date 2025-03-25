
# Obesity Analysis Project

## 📊 Project Overview
This project analyzes factors influencing obesity classification using the **Obesity Dataset** from Kaggle.  
Statistical analysis was performed using **SAS** for descriptive statistics and logistic regression, and **R** was used for data visualization and random forest modeling.  

## 🗂 Dataset
- Source: Kaggle [Obesity Dataset](https://www.kaggle.com/datasets/adeniranstephen/obesity-prediction-dataset/data)  
- Samples: 2,111 records  
- Variables include: Age, Height, Weight, Gender, family history, dietary habits, physical activity, and more.

## ✅ Project Structure
```
📁 obesity-analysis/
│
├─ obesity_analysis.sas     # SAS code for logistic regression and data cleaning
├─ obesity_analysis.R       # R code for visualization and random forest
└─ README.md                # Project documentation
```

## 🔎 Key Analyses
### In SAS:
- Import dataset
- Descriptive statistics
- Create binary obesity variable (obese / not obese)
- Perform logistic regression
- Export cleaned dataset

### In R:
- Load cleaned data
- Create age group categories
- Visualize age distribution and family history proportions
- Build random forest model and plot variable importance

## 📈 Key Findings (Example)
- **Weight** and **Height** are the strongest predictors of obesity.
- Higher obesity proportion observed in the **21-30** age group.
- Family history and eating habits also show influence.

## 🚀 How to Run
1. Clone this repository.
2. Run the `obesity_analysis.sas` code in SAS software.
3. Export cleaned data, then load it into R.
4. Run `obesity_analysis.R` for visualization and random forest results.

## 📚 Reference
- [Kaggle Dataset Link](https://www.kaggle.com/datasets/adeniranstephen/obesity-prediction-dataset/data)

---
*Prepared as part of a portfolio project demonstrating applied public health data analysis.*
