# Walmart Sales Data Analysis  
### End-to-End Data Analysis using Python & SQL

## 📌 Project Overview

This project focuses on performing **end-to-end sales analysis on Walmart transaction data** to extract meaningful business insights.  
The analysis combines **Python for initial data handling** and **SQL (MySQL)** for structured querying, aggregation, and advanced analytics such as window functions and time-based analysis.

The goal of this project is to demonstrate **real-world data analysis skills**, including data cleaning, feature engineering, and solving business-oriented questions using SQL.

---

## 🧰 Tools & Technologies Used

- **Python** (Pandas, NumPy) – data loading and preprocessing  
- **SQL (MySQL)** – data analysis and querying  
- **Jupyter Notebook (`.ipynb`)** – Python-based preprocessing  
- **MySQL Workbench / SQL Editor**  
- **Git & GitHub** – version control and project hosting  

---

## 📂 Data Source

- Dataset: **Walmart Sales Dataset**
- Source: Kaggle  
- Data Access Method:  
  - The dataset was **downloaded manually as a ZIP file from Kaggle**
  - Extracted locally and loaded into Python for initial inspection and preprocessing  

---

## 🔁 Project Workflow (Pipeline)

### 1️⃣ Data Acquisition
- Downloaded Walmart sales data from Kaggle as a ZIP file
- Extracted CSV files locally

### 2️⃣ Python Preprocessing (`.ipynb`)
- Loaded the dataset using Pandas
- Performed initial exploration:
  - `.head()`, `.info()`, `.describe()`
- Verified column names, data types, and consistency
- Prepared data for SQL analysis

### 3️⃣ Load Data into MySQL
- Created a MySQL database: `walmart_db`
- Loaded cleaned data into a `walmart` table
- Verified successful data insertion

---

## 🧹 Data Cleaning & Feature Engineering (SQL)

- Converted text-based `date` column into proper `DATE` format
- Added a new column `new_date` for date-based analysis
- Handled time-based transformations using `TIME()` and `DAYNAME()`
- Created derived metrics for:
  - Sales
  - Profit
  - Time-based shifts (Morning / Afternoon / Evening)

---

## 📊 SQL Analysis & Business Questions Answered

The project answers several **real-world business questions**, including:

### 🔹 Exploratory Analysis
- Total number of transactions
- Number of branches and cities
- Available payment methods
- Quantity distribution

### 🔹 Sales & Payment Analysis
- Transactions and quantity sold per payment method
- Most preferred payment method per branch
- Total sales by city and year

### 🔹 Rating Analysis
- Highest-rated product category per branch
- Average, minimum, and maximum ratings by city and category

### 🔹 Time & Date Analysis
- Busiest day of the week for each branch
- Sales distribution by:
  - Morning
  - Afternoon
  - Evening

### 🔹 Profitability Analysis
- Total profit by product category
- Branch-level and city-level profit insights

> Advanced SQL concepts used:
> - `GROUP BY`
> - `CASE WHEN`
> - `DATE` & `TIME` functions
> - Window functions (`RANK`, `DENSE_RANK`)
> - Common Table Expressions (CTEs)

---

## 📁 Project Structure

```text
walmart-sales-sql-analysis/
│
├── walmart_analysis.sql      # All SQL queries & analysis
├── walmart_analysis.ipynb    # Python preprocessing & exploration
└── README.md                 # Project documentation
```
