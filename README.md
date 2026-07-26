
# Retail-Sales-Business-Intelligence-Using-SQL
## 📌 Project Overview
This project focuses on analyzing retail sales data using **MySQL** to uncover customer purchasing behavior, product performance, and overall sales trends. It demonstrates practical SQL skills by solving real-world business problems through data exploration, cleaning, aggregation, and customer analysis.
The objective is to transform raw sales data into meaningful business insights that can support data-driven decision-making.
---
## 🎯 Objectives
- Explore and understand the retail sales dataset.
- Clean the data by identifying missing or invalid values.
- Analyze customer purchasing behavior.
- Calculate key business metrics using SQL aggregate functions.
- Generate actionable business insights from the data.
---
## 🛠️ Tools & Technologies
- MySQL Workbench
- SQL
- Git & GitHub
---
## 📂 Project Structure
```text
Retail-Sales-Business-Intelligence-Using-SQL/
│
├── Dataset/
│   └── retail_sales.csv
│
├── SQL/
│   ├── 01_data_exploration.sql
│   ├── 02_data_cleaning.sql
│   ├── 03_aggregate_functions.sql
│   └── 04_customer_analysis.sql
│
├── README.md
```
---
## 📚 SQL Concepts Used
- SELECT
- WHERE
- ORDER BY
- LIMIT
- DISTINCT
- Aggregate Functions (COUNT, SUM, AVG, MIN, MAX)
- GROUP BY
- HAVING
- BETWEEN
- LIKE
---
## 📊 Analysis Performed
### 🔍 Data Exploration
- Examined the dataset structure.
- Counted total records.
- Identified distinct customers and cities.
- Checked for missing and invalid values.
### 🧹 Data Cleaning
- Identified NULL values.
- Detected duplicate Order IDs.
- Verified invalid prices and quantities.
### 📈 Aggregate Analysis
- Calculated:
  - Total Revenue
  - Average Price
  - Minimum Price
  - Maximum Price
  - Total Quantity Sold
### 👥 Customer Analysis
- Top customers by total spending.
- Customers with the highest number of orders.
- Customers purchasing the most products.
---
## 📊 Query Results

> Executed against `Retail_Sales_Dataset.csv` (1,000 records) loaded into MySQL.

### 🔍 Data Exploration

**Dataset snapshot**

| Order_ID | Order_Date | Customer_Name | Product | Category | Quantity | Price | City | Payment_Method |
|---|---|---|---|---|---|---|---|---|
| 1000 | 2025-11-24 | Aarav | Shoes | Fashion | 3 | 3,036.73 | Hyderabad | UPI |
| 1001 | 2025-12-13 | Divya | Smartphone | Electronics | 5 | 24,609.61 | Chennai | UPI |
| 1002 | 2025-04-22 | Manoj | Backpack | Accessories | 1 | 1,822.05 | Pune | Credit Card |
| 1003 | 2025-08-18 | Vikram | T-Shirt | Fashion | 1 | 946.59 | Hyderabad | Cash |
| 1004 | 2025-06-24 | Rahul | Keyboard | Electronics | 3 | 1,104.53 | Pune | UPI |

**Key facts**

| Metric | Value |
|---|---:|
| Total Orders | 1,000 |
| Distinct Categories | Fashion, Electronics, Accessories, Stationery, Home, Furniture |
| Distinct Cities | Hyderabad, Chennai, Pune, Bengaluru, Coimbatore, Mumbai, Kochi, Delhi |
| Distinct Payment Methods | UPI, Credit Card, Cash, Debit Card |
| Orders from Chennai | 109 |
| Missing Customer Names | 0 (clean) |
| Invalid Prices (≤ 0) | 0 (clean) |

**Top 5 highest-priced orders**

| Product | Category | Quantity | Price | City | Payment Method |
|---|---|---|---:|---:|---|---|
| Laptop | Electronics | 5 | 60,319.69 | Pune | Debit Card |
| Laptop | Electronics | 1 | 60,312.52 | Chennai | Credit Card |
| Laptop | Electronics | 3 | 60,011.66 | Delhi | Credit Card |
| Laptop | Electronics | 5 | 59,933.72 | Hyderabad | Cash |
| Laptop | Electronics | 4 | 59,916.53 | Kochi | Debit Card |

---

### 🧹 Data Cleaning

| Check | Result |
|---|---:|
| Missing Customer_ID | 0 rows |
| Duplicate Order_IDs | 0 rows |
| Orders priced ₹500–₹1000 | 143 |

**Sample: Customers whose name starts with 'A'**

| Order_ID | Customer_Name | Product | Category | Price | City |
|---|---|---|---|---:|---|
| 1000 | Aarav | Shoes | Fashion | 3,036.73 | Hyderabad |
| 1006 | Ananya | Jeans | Fashion | 1,938.76 | Coimbatore |
| 1018 | Ananya | Jeans | Fashion | 1,839.23 | Hyderabad |
| 1020 | Ananya | Keyboard | Electronics | 1,137.81 | Bengaluru |
| 1024 | Aarav | Backpack | Accessories | 1,702.84 | Mumbai |

---

### 📈 Aggregate Analysis

| Metric | Value (₹) |
|---|---:|
| Average Price | 7,503.48 |
| Lowest Price | 72.00 |
| Highest Price | 60,319.69 |
| **Total Revenue** | **2,21,15,192.86** |

---

### 👥 Customer Analysis

**Top 10 customers by total spending**

| Rank | Customer | Total Spending (₹) |
|---:|---|---:|
| 1 | Divya | 16,47,464.79 |
| 2 | Akash | 16,39,543.25 |
| 3 | Aisha | 14,59,613.39 |
| 4 | Keerthi | 14,11,124.30 |
| 5 | Diya | 12,81,574.77 |
| 6 | Aarav | 12,38,893.03 |
| 7 | Manoj | 11,95,914.79 |
| 8 | Vikram | 11,87,661.79 |
| 9 | Harish | 11,67,992.23 |
| 10 | Sneha | 11,28,756.51 |

**Top 10 customers by items purchased**

| Rank | Customer | Total Items |
|---:|---|---:|
| 1 | Ananya | 194 |
| 2 | Divya | 184 |
| 3 | Aisha | 169 |
| 4 | Keerthi | 163 |
| 5 | Akash | 162 |
| 6 | Nisha | 155 |
| 7 | Harish | 155 |
| 8 | Rahul | 153 |
| 9 | Diya | 153 |
| 10 | Vikram | 152 |

**Top 10 customers by number of orders**

| Rank | Customer | Total Orders |
|---:|---|---:|
| 1 | Ananya | 65 |
| 2 | Divya | 58 |
| 3 | Diya | 57 |
| 4 | Rahul | 54 |
| 5 | Keerthi | 54 |
| 6 | Akash | 54 |
| 7 | Harish | 53 |
| 8 | Aisha | 53 |
| 9 | Nisha | 52 |
| 10 | Sneha | 50 |

---
## 💡 Key Business Insights
- High-value customers contribute a significant portion of total revenue.
- Monitoring invalid or missing data improves data quality and reporting accuracy.
- Aggregate metrics provide a clear understanding of overall business performance.
- Customer purchasing patterns can help businesses improve marketing and retention strategies.
---
## 🚀 Future Improvements
- Add Product Analysis.
- Add Sales Trend Analysis.
- Implement Advanced SQL (Subqueries, CTEs, Window Functions).
- Build an interactive Power BI dashboard using the same dataset.
- Perform advanced analysis using Python and Pandas.
---
## 👨‍💻 Author
**Sudarsan**
If you found this project helpful or interesting, feel free to ⭐ star the repository!
