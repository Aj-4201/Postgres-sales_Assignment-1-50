
#  Sales & Customer Analytics Dashboard (SQL + Power BI)

##  Project Summary

Designed and implemented an end-to-end data analytics solution using **PostgreSQL** and **Power BI** to analyze customer behavior, product performance, and sales trends. The project integrates database design, advanced SQL querying, and interactive visualization to deliver actionable business insights.

---

##  Key Objectives

-  Analyze sales performance and revenue trends
-  Understand customer purchasing behavior
- Evaluate product and category performance
-  Identify high-value customers and growth opportunities

---

##  Data Model

Relational database built using **PostgreSQL** with the following core tables:

| Table | Description |
|---|---|
| `Customers` | Customer details, registration date, membership tier |
| `Products` | Product info, category, price, stock levels |
| `Sales` | Transactional data (quantity, revenue, dates) |
| `Inventory` | Product stock tracking |

**Relationships:**
- `Customers` ↔ `Sales` → One-to-Many (1:M)
- `Products` ↔ `Sales` → One-to-Many (1:M)
- `Products` ↔ `Inventory` → One-to-One (1:1)

---

##  SQL Analysis Highlights

Developed **100+ SQL queries** ranging from basic to advanced:

###  Data Exploration & Aggregation
- Total revenue, average product price, stock levels
- Sales trends by month and year

###  Joins & Multi-Table Analysis
- Customer purchase behavior
- Product-level revenue and quantity sold
- Category-based performance

###  Advanced SQL Techniques
- **CTEs** (`WITH` clauses) for intermediate calculations
- **Window Functions:**
  - `RANK()`, `DENSE_RANK()` → Customer & product ranking
  - `LAG()` / `LEAD()` → Sales trend analysis
  - `NTILE()` → Customer segmentation

###  Business Logic Queries
- Top 5 customers by spending
- Products contributing to top 50% of revenue *(Pareto Analysis)*
- Customers purchasing within 7 days of registration
- Category-level revenue leaders
- Stock vs. sales gap analysis

---

##  Power BI Dashboard Features

### KPI Overview
- Total Revenue
- Total Sales
- Average Order Value

### Sales Trends
- Monthly and yearly revenue analysis

### Product Performance
- Top-selling products
- Category contribution breakdown

### Customer Insights
- High-value customer identification
- Purchase frequency and segmentation

### Inventory Insights
- Stock levels vs. sales performance

###  Interactive Features
- Filters by date, category, and customer segment
- Drill-down capabilities across all visuals

---

##  Tools & Technologies

![PostgreSQL](https://img.shields.io/badge/PostgreSQL-4169E1?style=for-the-badge&logo=postgresql&logoColor=white)
![Power BI](https://img.shields.io/badge/Power_BI-F2C811?style=for-the-badge&logo=powerbi&logoColor=black)
![SQL](https://img.shields.io/badge/SQL-Advanced-blue?style=for-the-badge)

| Tool | Usage |
|---|---|
| **PostgreSQL** | Database design & SQL querying |
| **Power BI** | Data visualization & dashboarding |
| **SQL Concepts** | Joins, Aggregations, Subqueries, CTEs, Window Functions |

---

## Business Impact

- Identified top-performing products and key revenue drivers
-  Enabled segmentation of high-value vs. low-value customers
-  Highlighted inventory inefficiencies (stock vs. demand gaps)
-  Provided a centralized dashboard for data-driven decision-making

---

##  Skills Demonstrated

| Skill | Level |
|---|---|
| SQL | Beginner → Advanced |
| Data Modeling & Relational Design | |
| Data Analysis & Business Insights | |
| Power BI Dashboard Development |  |
| Analytical Thinking & Problem Solving | |

---

## in Conclusion

Delivered a **full-stack data analytics solution** that transforms raw transactional data into actionable insights — showcasing strong capability in both SQL analytics and BI reporting.

---

*© 2026 · Built with PostgreSQL & Power BI*
```
1. Copy everything above into a file named `README.md`
2. Drop it in your project folder
3. Then run your usual `git add . → git commit → git push` and it'll render beautifully on GitHub automatically. The badges and tables will all display correctly.
