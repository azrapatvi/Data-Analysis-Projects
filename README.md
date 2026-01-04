# 📊 Data Analysis & Business Intelligence Projects

This repository contains a collection of **data analysis projects, dashboards, and exploratory notebooks** developed using **Power BI, Python, and Google Colab Notebooks (.ipynb)**.  

Each project folder contains either:

- A **Power BI Dashboard (.pbix)**
- A **Google Colab Notebook (.ipynb) for EDA / analysis**
- Or **both together** when analysis and visualization are combined.

All notebooks in this repository were created and executed in **Google Colab (not Jupyter Notebook)**.

---

## 📂 Repository Structure

```
Data-Analysis-Projects/
│
├── Blinkit Dashboard/
├── Sales Dashboards/
├── UPI Transaction Dashboard/
├── amazon Dashboard/
├── ecommerce dashboard/
├── hospital analysis dashboard/
├── pizza-sales-analysis/
├── student performance analysis/
├── insurance Dashboard/
├── twitter Dashboard/
├── Credit Card Customer & Transaction Analysis/
├── uber dashboard/
└── walmart-sales-sql-analysis/
```

Some folder contains:
- `*.pbix` → Power BI Interactive Dashboard  
- `README.md` → Project-level explanation & screenshots  

Some folder contains:
- `*.ipynb` → Google Colab Notebook (EDA & analysis)  
- `README.md` → Project-level explanation

Some folder contains:
- `*.sql` → SQL-based business analysis  
- `README.md` → Project-level explanation & screenshots  

Some folder contains **all of the following**:
- `*.pbix` → Power BI Interactive Dashboard  
- `*.ipynb` → Google Colab Notebook (Data Cleaning, EDA & Insights)  
- `*.sql` → SQL-based business analysis  
- `README.md` → Project-level explanation & insights  
---

## 🗂 Project Summaries

### 🛒 Blinkit Dashboard
- Power BI dashboard + EDA notebook  
- Sales performance, outlet trends, product analysis

---

### 🧾 Sales Dashboards
- Multiple sales reporting dashboards  
- Time trends, KPIs, revenue breakdowns

---

### 💸 UPI Transaction Dashboard
- Digital payment trend analysis  
- Transaction volume & usage insights

---

### 🛍 Amazon Dashboard
- Ecommerce product & sales insights  
- Category-wise performance metrics

---

### 🛒 Ecommerce Dashboard
- Power BI dashboard + Google Colab notebook  
- Sales, profit, discounts, shipping mode analysis

---

### 🏥 Hospital Analysis Dashboard
- Power BI dashboard + EDA notebook  
- Admissions, waiting time, demographics, satisfaction score

---

### 🍕 Pizza Sales Analysis — SQL, Python EDA & Power BI
- **End-to-end analytics project**
- MySQL used for database creation and business queries  
- Python (Google Colab) used for EDA & validation  
- Power BI dashboard with:
  - Revenue, Orders, Quantity & AOV KPIs  
  - Sales, Order & Pizza Performance pages  
- Focus on:
  - Revenue trends
  - Customer ordering behavior
  - Size-wise & category-wise performance
  - Top & bottom performing pizzas  

---

### 💳 Credit Card Customer & Transaction Analysis — MySQL + Power BI
- **Business Intelligence & Data Refresh Validation project**
- MySQL used as the backend database (`ccdb`)
- Two core tables:
  - `cust_detail` — customer demographics
  - `cc_detail` — credit card transactions
- Additional tables (`cust_add`, `cc_add`) added to:
  - Simulate incremental data
  - Validate **Power BI refresh functionality**
- Power BI dashboards include:
  - Credit Card Transaction Report
  - Customer Demographic Analysis
  - Revenue analysis by:
    - Card Category
    - Education Level
    - Customer Job
    - Expense Type
    - Gender
  - Weekly, Quarterly, and Annual revenue trends
- KPIs:
  - Total Revenue
  - Total Transactions
  - Total Interest Earned
  - Average Customer Age
- 📄 **Dashboard preview available in:** `credit_card_report.pdf`

---

### 🎓 Student Performance Analysis — Python EDA
- Python-based Exploratory Data Analysis project  
- Analysis of Math, Reading & Writing scores  
- Focus on impact of:
  - Gender
  - Parental education
  - Test preparation
  - Sports & family background  
- Visual insights using bar charts, histograms, and heatmaps  

---

### 🛒 Walmart Sales Analysis — SQL + Python
- **SQL-focused end-to-end data analysis project**
- Dataset downloaded manually from Kaggle and processed in Python  
- Python (Google Colab) used for:
  - Initial data loading
  - Data inspection & validation
- MySQL used for:
  - Database creation (`walmart_db`)
  - Data cleaning & transformation
  - Feature engineering (date, time, profit)
  - Business-driven analytical queries
- Key analysis areas:
  - Transaction volume & payment method analysis
  - Branch & city-level performance
  - Busiest day per branch using window functions
  - Category-wise rating & profitability analysis
  - Time-based sales analysis (Morning / Afternoon / Evening)
- SQL concepts used:
  - CTEs
  - Window Functions (`RANK`, `DENSE_RANK`)
  - Date & Time functions
  - Aggregations & conditional logic

---

### 🛡 Insurance Dashboard
- Claim & policy trend analysis  
- Customer segmentation insights

---

### 🐦 Twitter Dashboard
- Social media engagement & performance metrics  
- Tweet activity & interaction overview

---

### 🚗 Uber Dashboard
- Ride demand patterns & revenue trends  
- Geo-based and time-based analysis

---

## 🛠 Tools & Technologies

- **Power BI**
  - Power Query • DAX • Interactive Dashboards  

- **SQL**
  - MySQL • Database Design • Business Queries  

- **Python (Google Colab)**
  - Pandas • NumPy • Matplotlib • Seaborn  

- **Analytics Concepts**
  - EDA • KPI Reporting • Trend Analysis • Business Insights  

---

## 🎯 Purpose of This Repository

This repo is created for:
- Portfolio & academic demonstration  
- Showcasing **data analytics and BI project skills**  
- Practicing **real-world dataset insights & dashboard design**


