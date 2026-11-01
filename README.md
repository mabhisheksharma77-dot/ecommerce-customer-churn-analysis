# E-Commerce Customer Churn Analysis & Retention Dashboard

## 📊 Project Overview

This project analyzes customer churn behavior for an e-commerce business and identifies the key factors associated with customer attrition.

The analysis combines **Excel, MySQL, and Power BI** to clean customer data, perform business analysis, create KPIs, and develop an interactive churn and retention dashboard.

## 🎯 Business Problem

The objective of this project is to understand:

- Overall customer churn rate
- Which customer segments have higher churn risk
- How customer tenure affects churn
- How order frequency affects churn
- Impact of customer ratings on churn
- Relationship between returns and churn
- Relationship between cancellations and churn
- Churn across customer value segments
- Payment methods associated with churned customers

## 🛠️ Tools & Technologies

- **Excel** – Data cleaning and preparation
- **MySQL** – Data analysis and SQL queries
- **Power BI** – Interactive dashboard and data visualization
- **DAX** – KPI calculations and measures

## 📁 Dataset

The dataset contains **8,000 customer records** and includes information such as:

- Customer ID
- Age
- Gender
- City
- Membership Type
- Tenure
- Total Orders
- Total Spend
- Average Order Value
- Last Order Days Ago
- Discount Usage
- Return Count
- Customer Rating
- Payment Method
- Support Tickets
- Cancellation Count
- Churn Status

## 📈 Power BI Dashboard

The dashboard provides an interactive view of customer churn and retention performance.

### Dashboard Preview

![E-Commerce Customer Churn Dashboard](ecommerce-churn-dashboard.png)

### Dashboard Features

- Total Customers KPI
- Churn Rate KPI
- Revenue at Risk
- Average Customer Rating
- City-wise Churn Distribution
- Churn Rate by Customer Tenure
- Churn Rate by Customer Value
- Customer Rating Distribution
- Churn Rate by Return Count
- Churn Rate by Cancellation Count
- Churned Customers by Payment Method
- Interactive filters for Membership Type, Payment Method, City, Gender and Churn

## 📌 Key KPIs

| KPI | Result |
|---|---:|
| Total Customers | 8,000 |
| Churned Customers | 1,187 |
| Overall Churn Rate | 14.84% |
| Retention Rate | 85.16% |

## 🔍 Key Insights

- Customers with **0–6 months tenure** have the highest churn rate at approximately **22.46%**.
- Customers with only **1–5 orders** show a high churn rate of approximately **22.12%**.
- Customers with **3+ returns** have a churn rate of approximately **24.01%**.
- Customers with **3+ cancellations** have a churn rate of approximately **22.54%**.
- Customers with ratings below 3 have a churn rate of approximately **19.11%**.
- Low-value customers have a higher churn rate than medium- and high-value customers.
- Longer-tenure customers generally show lower churn risk.

## 💡 Business Recommendations

1. Focus on retention campaigns during the first **6–12 months** of the customer lifecycle.
2. Encourage repeat purchases through personalized offers and loyalty programs.
3. Investigate customers with frequent returns and cancellations.
4. Improve customer experience for customers giving low ratings.
5. Create targeted retention campaigns for high-risk customers.
6. Monitor churn trends regularly using the Power BI dashboard.

## 🔄 Project Workflow

**Excel → Data Cleaning → MySQL → SQL Analysis → Power BI → Dashboard → Business Insights**

## 📂 Project Files

- `Ecommerce_Customer_Churn_Analysis.csv` – Customer dataset
- `ecommerce-churn-dashboard.png` – Power BI dashboard preview
- `README.md` – Project documentation

## 👨‍💻 Author

**Abhishek Sharma**

Aspiring Data Analyst

**Skills:** Excel | SQL | MySQL | Power BI | Data Visualization | Google Sheets
