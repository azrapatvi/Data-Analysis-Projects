# 🍕 Pizza Sales Analysis (SQL Project)

## 📌 Project Overview
This project analyzes pizza sales data using **MySQL** to extract meaningful business insights such as revenue trends, popular pizza categories, order patterns, and revenue contribution by category.

The project demonstrates clean SQL writing, structured analysis, and business-oriented thinking.

---

## 🛠 Tools & Technologies
- MySQL
- MySQL Workbench
- GitHub

---

## 🗂 Database Information

### 📊 Tables Used
A total of **4 tables** were imported and used in this project:

1. **orders**  
   - Stores order date and time information

2. **order_details**  
   - Stores individual pizza items and quantities per order

3. **pizzas**  
   - Stores pizza size and price details

4. **pizza_types**  
   - Stores pizza name and category

---

## 🧱 Database Creation & Data Import Process

### Step 1: Database Creation
The database was created using SQL:

```sql
CREATE DATABASE pizzahut;
USE pizzahut;
```
### Step 2:Data Import Using MySQL Workbench
Since the dataset contains a small number of rows, data was imported using the following method:

Open MySQL Workbench

Right-click on Tables

Select Table Data Import Wizard

Choose the CSV file

Follow the wizard steps to complete the import

✅ This method is recommended only when the dataset is small and not very large.


### ⚠️ Handling Large Datasets (Important Note)

If the dataset contains more than ~40,000 rows or is significantly large:
First, manually create the table structure using CREATE TABLE,
Carefully define proper data types,
Then insert the data into the tables,

This approach ensures:
Correct data types,
Better performance,
Data integrity,
Avoids import-related issues

👉 In this project, table structures were explicitly created to ensure proper data types and consistency.

### 📊 Business Questions Answered

The SQL analysis addresses the following business questions:

Total number of orders placed

Total revenue generated from pizza sales

Highest priced pizza

Most commonly ordered pizza size

Top 5 most ordered pizza types

Total quantity ordered for each pizza

Category-wise quantity distribution

Hourly distribution of orders

Average number of pizzas ordered per day

Top 3 pizzas based on revenue

Percentage contribution of each pizza category to total revenue
 
### 📌 Conclusion
This project showcases the practical application of SQL for real-world data analysis, focusing on extracting actionable business insights from structured data.
  
