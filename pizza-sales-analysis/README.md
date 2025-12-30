# 🍕 Pizza Sales Analysis — SQL, Python EDA & Power BI Dashboard

## 📌 Project Overview
This project is an **end-to-end Pizza Sales Analysis** using **MySQL (SQL)**, **Python (EDA Notebook)**, and an **interactive Power BI dashboard** to uncover actionable business insights.

The analysis focuses on:
- Revenue trends & sales performance
- Customer ordering behavior
- Pizza-wise, size-wise & category-wise performance
- Time-based patterns (hour, day, month)
- Identifying top & bottom performing pizzas

This project demonstrates a **complete analytics workflow** — from raw data querying to visual storytelling.

---

## 🛠 Tools & Technologies
- **Database:** MySQL / MySQL Workbench  
- **Data Analysis:** Python (Pandas, Matplotlib, Seaborn)  
- **Visualization & Reporting:** Power BI  
- **Notebook:** Jupyter / Google Colab (`pizza_sales.ipynb`)  
- **Version Control:** GitHub  

---

## 🗂 Project Structure

```
📁 Pizza-Sales-Analysis
├── schema.sql # Database & table structure
├── analysis.sql # SQL queries for business insights
├── Pizza_Sales_Dashboard.pbix
├── pizza_sales.ipynb # Notebook for EDA & visual analysis
└── README.md

```

---

## 🗂 Database Information

### 📊 Tables Used
A total of **4 tables** were used:

1. **orders** – Stores order date & time  
2. **order_details** – Stores pizza items & quantities per order  
3. **pizzas** – Stores pizza size & price  
4. **pizza_types** – Stores pizza name & category  

---

## 🧱 Database Creation & Data Import

### ✅ Step 1 — Create Database
```sql
CREATE DATABASE pizzahut;
USE pizzahut;
```
### ✅ Step 2 — Import Data (MySQL Workbench)
Used Table Data Import Wizard since dataset size is small.

For large datasets:
Create tables manually → define data types → insert data → ensures better performance & integrity.

---

## 🔎 SQL Business Analysis (analysis.sql)

This project answers:

- Total number of orders placed
- Total revenue generated
- Highest-priced pizza
- Most commonly ordered pizza size
- Top 5 most-ordered pizza types
- Total quantity ordered per pizza
- Category-wise quantity distribution
- Hourly distribution of orders
- Average pizzas ordered per day
- Top 3 pizzas by revenue
- % revenue contribution by pizza category

---

## 📊 Notebook Analysis & Data Exploration (pizza_sales.ipynb)

The notebook extends insights beyond SQL using EDA + Visuals:

### ✔ Key Insights from Notebook
- Total revenue ≈ 817,860 and Average Order Value ≈ 38.3
- Medium & Large pizzas generate the highest revenue
- Strong 80/20 demand pattern — few pizzas drive most sales
- Evenings & weekends = peak sales period
- Seasonal trends visible across months
- Customers are willing to pay for premium pizzas
- Some pizzas are rarely ordered → candidates for optimization

### 📈 Visualizations Included

- Revenue & order trend charts
- Category-wise & size-wise contribution
- Top-selling vs least-selling pizzas
- Time-based order distribution (hour/day/month)


## 📊 Power BI Dashboard Overview

The Power BI dashboard converts analytical insights into an **interactive business report** using slicers, filters, and drill-down capabilities.

### 🏠 Home Page
**Key performance indicators (KPIs):**
- Total Revenue  
- Order Count  
- Total Quantity Sold  
- Average Order Value  

**Features:**
- Global date slicer for dynamic filtering
- Navigation buttons for seamless page switching

### 📈 Sales Analysis Page
**Sales performance insights:**
- Total sales by pizza size
- Sales contribution by category
- Quantity-based sales distribution
- Monthly sales trend
- Average Order Value (AOV) gauge
- Pizza-wise sales comparison

### 🧮 Order Analysis Page
**Customer ordering behavior:**
- Number of orders by quantity
- Orders by pizza type
- Orders by pizza category
- Orders by day of the week
- Hour-group heatmap for demand analysis
- Monthly order trend

### 🍕 Pizza Performance Page
**Product-level performance analysis:**
- Top 10 pizzas by quantity sold
- Bottom 10 pizzas by quantity sold
- Category-wise performance comparison
- Size-wise performance across categories

**Detailed performance table includes:**
- Pizza name  
- Category  
- Size  
- Price  
- Quantity  
- Total sales

##**The dashboard pages and visuals are demonstrated in the screenshots below.**
<img width="1288" height="730" alt="image" src="https://github.com/user-attachments/assets/6f1f4e2f-fe38-4b53-b00a-0e971a4ecee3" />
<img width="1261" height="718" alt="image" src="https://github.com/user-attachments/assets/930e6fe9-4730-49dc-b436-1b69b890f687" />
<img width="1262" height="716" alt="image" src="https://github.com/user-attachments/assets/04fe1c8a-8103-4ebc-8f27-29c9cf2333ae" />
<img width="1261" height="721" alt="image" src="https://github.com/user-attachments/assets/b18a1b12-1f1a-4bec-bc35-b6e0af9b694a" />


---

## 🧾 Conclusion

This project demonstrates how SQL + Notebook-based EDA together provide a complete analytical workflow — from structured querying to visual storytelling and actionable business insights.
