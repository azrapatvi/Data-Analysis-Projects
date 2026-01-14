# 🍷 Red Wine Quality Analysis (EDA)

This project performs **Exploratory Data Analysis (EDA)** on the Red Wine Quality dataset to understand how different physicochemical properties affect wine quality.  
The analysis focuses on data understanding, visualization, feature distribution, outliers, and scaling techniques.

---

## 📌 Project Overview

- Dataset: Red Wine Quality Dataset
- Type: Exploratory Data Analysis (EDA)
- Tools Used: Python, Jupyter Notebook
- Objective:  
  To analyze wine characteristics and explore relationships between features and wine quality.

---


---

## 📊 Dataset Description

The dataset contains various chemical properties of red wine samples, including:

- Fixed acidity  
- Volatile acidity  
- Citric acid  
- Residual sugar  
- Chlorides  
- Free sulfur dioxide  
- Total sulfur dioxide  
- Density  
- pH  
- Sulphates  
- Alcohol  
- Quality (target variable)

---

## 🔍 Steps Performed in the Analysis

### 1️⃣ Importing Libraries
Essential Python libraries such as NumPy, Pandas, Matplotlib, and Seaborn are imported for data manipulation and visualization.

### 2️⃣ Loading the Dataset
The dataset is loaded and inspected to understand its basic structure.

### 3️⃣ Dataset Overview and Structure
- Shape of the dataset
- Data types
- Missing values
- Summary statistics

### 4️⃣ Data Analysis
- Understanding feature distributions
- Identifying imbalance in the target variable
- Detecting outliers in features like residual sugar

### 5️⃣ Data Visualization
- Histograms
- Boxplots
- Count plots
- Feature-wise analysis with respect to wine quality

### 6️⃣ Feature Scaling
- Standardization using **StandardScaler**
- Preparing data for potential machine learning models

---

## 📈 Key Insights

- The dataset is **imbalanced**, with most wines having quality ratings of **5 and 6**.
- Certain features such as **residual sugar** contain noticeable outliers.
- Alcohol content shows a visible relationship with wine quality.
- Feature scaling is important for further modeling.

---

## 🛠️ Technologies Used

- Python 🐍
- Jupyter Notebook
- Pandas
- NumPy
- Matplotlib
- Seaborn
- Scikit-learn

---
