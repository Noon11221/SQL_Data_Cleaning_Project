# Data Cleaning Project – Tech Layoffs Dataset

## Introduction
This project focuses on cleaning and preparing a tech layoffs dataset for further analysis.  
The goal is to transform raw, messy data into a clean and consistent dataset that can be reliably used for exploratory data analysis (EDA) and visualization.

All data cleaning steps were performed using **PostgreSQL**, following common data cleaning best practices such as removing duplicates, standardizing text values, handling NULLs, and correcting data types.

Check SQL queries out here: [data_cleaning folder](/data_cleaning/)
## Background
The dataset contains information about company layoffs, including:
- Company name
- Locations
- Industry
- Total number of employees laid off
- Percentage laid off
- Date of layoffs
- Company stage, country, and funds raised

The raw data contains several issues:
- Duplicate records
- Inconsistent text formatting
- Incorrect or string-based NULL values
- Missing industries
- Improper date formats

This project addresses these issues step by step.

---

## Tools I Used
- **PostgreSQL** – data cleaning and transformation
- **SQL** – querying, updating, and deleting data
- **Git & GitHub** – version control and project documentation
- **VS Code** – writing and managing SQL scripts

---

## The Analysis

### 1. Create Staging Tables
- Created a staging table (`layoffs_staging`) from the raw dataset.
- Copied all raw data into the staging table to preserve the original data.

### 2. Identify and Remove Duplicates
- Used `GROUP BY` with `COUNT(*)` to identify duplicate rows.
- Applied `ROW_NUMBER()` with a window function to mark duplicates.
- Created a second staging table (`layoffs_staging2`) and removed duplicate records.

### 3. Standardize Text Data
- Trimmed whitespace from company names.
- Standardized industry names (e.g. merging variations of **Crypto**).
- Cleaned country names (e.g. removing trailing periods in `United States.`).

### 4. Handle Date Column
- Converted date values from text to proper `DATE` format.
- Replaced string `'NULL'` values with actual SQL `NULL`.
- Altered the column type safely using `USING`.

### 5. Handle Missing and NULL Values
- Replaced string `'NULL'` values in numeric columns with real `NULL`.
- Populated missing `industry` values using a self join based on company name.
- Removed rows where both `total_laid_off` and `percentage_laid_off` were NULL, as they contained no meaningful layoff information.

### 6. Final Cleanup
- Dropped helper columns (e.g. `row_num`) once cleaning was complete.
- Verified the final dataset for consistency and usability.

---

## What I Learned
- How to safely clean data using **staging tables** without affecting raw data
- Identifying and removing duplicates using window functions
- Standardizing categorical data for consistency
- Handling NULL values correctly in PostgreSQL
- Using self joins to populate missing values
- Writing clean, readable, and maintainable SQL for data cleaning tasks

---

## Conclusions
After cleaning, the dataset is:
- Free of duplicate records
- Consistent in text formatting
- Properly typed (especially date and numeric columns)
- Free of meaningless or empty rows

This cleaned dataset is now ready for:
- Exploratory Data Analysis (EDA)
- Visualization
- Business insights and reporting

This project demonstrates a complete **end-to-end data cleaning workflow** using SQL and PostgreSQL.
