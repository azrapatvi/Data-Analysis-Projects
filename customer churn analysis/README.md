# 📉 Customer Churn Analysis (EDA Project)

## 📌 Project Overview
This project performs **Exploratory Data Analysis (EDA)** on a telecom customer dataset to understand the key factors that influence customer churn. The goal is to identify patterns, business risks, and actionable insights that can help companies improve customer retention.

The analysis is implemented using **Python in Google Colab** with popular data science libraries.

---

## 🧰 Tools & Technologies
- Python  
- Google Colab Notebook (`.ipynb`)  
- Pandas, NumPy  
- Matplotlib, Seaborn  

---

## 📂 Dataset
The dataset contains customer-level information such as:

- Demographics (Senior Citizen, Gender)  
- Account information (Tenure, Contract Type, Payment Method)  
- Service usage (Internet services, Security, Tech support, etc.)  
- Charges (MonthlyCharges, TotalCharges)  
- Target variable: **Churn**

---

## 🔍 Key Analysis Performed
- Data cleaning and preprocessing  
- Handling missing and invalid values  
- Feature transformation (binary to categorical)  
- Univariate and bivariate analysis  
- Churn distribution visualization  
- Tenure, contract, payment method, and service-based churn analysis  
- Statistical and graphical exploration of customer behavior  

---

## 📊 Key Business Insights
- Customers in their **first 1–2 months** are most likely to churn.  
- **Month-to-month contracts** have significantly higher churn rates.  
- Customers without **security and support services** churn more often.  
- **Senior citizens** show higher churn tendency.  
- Users paying via **Electronic Check** have the highest churn rate.  
- Customers with **short tenure and moderate–high monthly charges** are more sensitive to leaving.

---

## ✅ Business Recommendations
- Improve **early-stage onboarding and engagement**.  
- Promote **long-term contracts** using discounts and loyalty benefits.  
- Bundle **security and tech support services**.  
- Provide personalized plans for **senior customers**.  
- Encourage alternative payment methods to reduce churn risk.

---

## 📁 Project Structure
```
Customer-Churn-Analysis/
│
├── customer_churn_analysis.ipynb
├── dataset.csv
└── README.md
```

## 🎯 Future Improvements
- Build a churn prediction model (Logistic Regression / Random Forest)  
- Feature importance analysis  
- Dashboard using Streamlit or Power BI  
- Automated reporting

---
