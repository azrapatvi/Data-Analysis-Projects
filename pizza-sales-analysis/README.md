# 🍕 Pizza Sales Analysis — SQL + Data Exploration (Notebook)

## 📌 Project Overview
This project analyzes pizza sales data using **MySQL (SQL queries)** and a **Python Notebook (.ipynb)** to uncover key business insights such as:

- Revenue trends and order patterns  
- Best-selling pizzas and categories  
- Size-wise and category-wise contribution  
- Peak order times and seasonal behavior  
- Visual insights from charts and EDA

The project demonstrates **clean SQL writing, structured analysis, data visualization, and business-oriented thinking**.

---

## 🛠 Tools & Technologies
- MySQL / MySQL Workbench  
- Python (Pandas, Matplotlib, Seaborn)  
- Jupyter / Google Colab Notebook (`pizza_sales.ipynb`)  
- GitHub

---

## 🗂 Project Structure

```
📁 Pizza-Sales-Analysis
├── schema.sql # Database & table structure
├── analysis.sql # SQL queries for business insights
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

##🔎 SQL Business Analysis (analysis.sql)

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

##📊 Notebook Analysis & Data Exploration (pizza_sales.ipynb)

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

## 🧾 Conclusion

This project demonstrates how SQL + Notebook-based EDA together provide a complete analytical workflow — from structured querying to visual storytelling and actionable business insights.
