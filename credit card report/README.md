# 💳 Credit Card Customer & Transaction Analysis  
### MySQL + Power BI | Data Refresh Validation Project

---

## 📌 Project Overview
This project focuses on analyzing **credit card customer demographics** and **transaction behavior**
using **MySQL** as the backend database and **Power BI** for visualization.

A key objective of this project was to **validate Power BI’s data refresh functionality**
by simulating the addition of new records in the database and verifying
real-time dashboard updates after refresh.

---

## 🗄️ Database & Data Source
- **Database:** `ccdb`
- **Database Tool:** MySQL Workbench
- **BI Tool:** Power BI Desktop
- **Connection Type:** MySQL Database Connector

---

## 📊 Core Tables (Initial Data)

Initially, the project was built using **two main tables**:

### 1️⃣ `cust_detail` — Customer Information  
Stores demographic and personal details of customers.

**Key Columns:**
- `Client_Num` (Customer ID)
- `Customer_Age`
- `Gender`
- `Education_Level`
- `Marital_Status`
- `State_cd`
- `Customer_Job`
- `Income`
- `Cust_Satisfaction_Score`

---

### 2️⃣ `cc_detail` — Credit Card Transaction Details  
Stores weekly credit card usage and transaction metrics.

**Key Columns:**
- `Client_Num`
- `Card_Category`
- `Annual_Fees`
- `Credit_Limit`
- `Total_Trans_Amt`
- `Total_Trans_Vol`
- `Avg_Utilization_Ratio`
- `Interest_Earned`
- `Week_Start_Date`
- `Delinquent_Acc`

These two tables were used to build the **initial Power BI dashboards**.

---

## ➕ Additional Tables (Refresh Testing)

To test **Power BI refresh functionality**, two additional tables were created
containing **incremental / new records**:

### 3️⃣ `cust_add`
- Same schema as `cust_detail`
- Contains additional customer records

### 4️⃣ `cc_add`
- Same schema as `cc_detail`
- Contains additional transaction records

---

## 🔄 Data Refresh Testing Strategy

Instead of replacing existing data, **new records were appended** to the main tables.

### SQL Append Logic
```sql
INSERT INTO cust_detail
SELECT * FROM cust_add;

INSERT INTO cc_detail
SELECT * FROM cc_add;
```

Row counts increased, confirming successful data insertion.
## 🔌 Power BI Connection

- **Connection Type:** MySQL Database Connector  
- **Data Source:** MySQL Workbench (`ccdb`)

**Tables Loaded:**
- `cust_detail`
- `cc_detail`

Power BI was directly connected to MySQL, so any data update in the database
was reflected automatically after refresh.

---

## 🔁 Power BI Refresh Testing

**Steps Followed:**
1. Inserted new records into `cust_add` and `cc_add`
2. Appended them into the main tables using SQL
3. Clicked **Refresh** in Power BI
4. Verified updated KPIs, charts, and totals

✅ **Result:** Power BI successfully reflected new data after refresh.

---

## 📈 Dashboards Created

- Credit Card Transaction Report  
- Customer Demographic Analysis  

### Revenue Analysis by:
- Card Category
- Education Level
- Customer Job
- Expense Type
- Gender

### Time-Based Analysis:
- Weekly Revenue Trends
- Quarterly Revenue Trends
- Annual Revenue Trends

---

## 📊 KPIs

- Total Revenue
- Total Transactions
- Total Interest Earned
- Average Customer Age

---

## 🎯 Key Learnings

- MySQL works efficiently as a backend for Power BI
- Appending data is a safe and reliable approach to test refresh functionality
- Power BI refresh accurately reflects database changes
- Clean schema design simplifies analytics and future scaling

---

## 🧠 Use Case

This project simulates a **real-world BI scenario** where new customer and
transaction data is continuously added, and dashboards must stay updated
without rebuilding the data model.

---

## 🛠️ Tools & Technologies

- MySQL Workbench
- Power BI Desktop
- SQL
- Data Modeling
- Dashboard Design
  
