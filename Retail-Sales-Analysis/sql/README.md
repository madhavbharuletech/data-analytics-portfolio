# 🧮 SQL Analysis — Retail Sales Project

This folder documents the SQL work performed to explore, validate, and prepare the retail sales dataset for reporting.

The queries follow a structured analytical workflow, starting with data validation and progressing toward business insights and the creation of a reporting layer.

---

# 🎯 Role of SQL in the Project

SQL was the core analytical tool used to:

✔ Understand the dataset structure
✔ Validate data quality and consistency
✔ Generate aggregated metrics
✔ Identify trends and performance patterns
✔ Prepare a reusable dataset for visualisation

The goal was to ensure that insights were built on reliable and well-understood data.

---

# 🧭 SQL Workflow

The SQL analysis was carried out in four key stages:

## 1️⃣ Data Exploration & Validation

Initial queries were used to inspect the dataset and verify its integrity.

This included:

* Counting total records
* Checking for NULL values
* Reviewing date ranges
* Verifying Order_ID duplication patterns

These steps confirmed that the dataset was structurally sound and suitable for analysis.

---

## 2️⃣ Descriptive Analysis

After validation, SQL was used to generate key descriptive metrics such as:

* Total sales
* Sales by year
* Sales by region
* Sales by category

This provided a high-level understanding of business performance across different dimensions.

---

## 3️⃣ Performance & Trend Analysis

More detailed queries explored performance drivers and patterns, including:

* Top states by sales
* Profitability by category
* Average discount behaviour
* Monthly sales trends
* Top customers

These insights helped identify growth areas and performance variations across the business.

---

## 4️⃣ Reporting Layer Creation

A SQL view (`vw_sales_analytics`) was created to serve as a semantic layer for reporting tools such as Tableau.

The view includes derived fields to simplify analysis:

* Order Year
* Order Month
* Month Name
* Delivery Time (days)

Creating this view ensured:

✔ Clean separation between raw and reporting data
✔ Reusability for future analysis
✔ Consistent metrics across dashboards

---

# 📂 Files Included

## 📄 `analysis_queries.sql`

Contains all SQL queries used throughout the project, organised into:

* Dataset preview and schema checks
* Data validation queries
* Aggregated business metrics
* Trend analysis
* Reporting view creation

---

## 📊 Summary of Analytical Findings

The table below summarises the key results derived from SQL analysis along with the corresponding business interpretation.

| Analysis Area                | Metric / Dimension    | Key Result                   | Business Insight               |
| ---------------------------- | --------------------- | ---------------------------- | ------------------------------ |
| **Data Overview**            | Total Orders          | ~4,900+ distinct orders      | Healthy transaction volume     |
|                              | Total Sales           | ~2.26 million                | Mid-sized retail business      |
|                              | Avg Order Value       | ~459                         | Moderate basket size           |
| **Time Analysis**            | Sales Trend (Yearly)  | Strong growth from 2017–2018 | Business expanding over time   |
|                              | Order Volume Trend    | Orders increase every year   | Growth driven by higher demand |
|                              | Seasonality           | Peak in Nov–Dec (Q4)         | Strong year-end demand         |
| **Regional Performance**     | Top Region            | West                         | Highest revenue contributor    |
|                              | Weakest Region        | South                        | Consistent underperformance    |
| **State Performance**        | Top State             | California                   | Disproportionate revenue share |
|                              | Top 3 States          | CA, NY, TX                   | Geographic concentration risk  |
| **Product Performance**      | Top Category          | Technology                   | Primary revenue driver         |
|                              | Second Category       | Furniture                    | Strong secondary contributor   |
| **Sub-Category Performance** | Top Sub-Category      | Phones                       | Highest-selling product type   |
|                              | Close Second          | Chairs                       | Nearly equal to Phones         |
| **Customer Behaviour**       | Revenue Concentration | Low                          | No single dominant customer    |
|                              | Top Customer Sales    | ~25K                         | Balanced customer base         |
|                              | Orders per Customer   | 12–17 (top customers)        | Stable repeat behaviour        |
| **Operational Metric**       | Delivery Time         | Calculated but stable        | No major delivery issues       |
| **Data Quality**             | Missing Values        | Postal Code only             | Acceptable, non-critical       |

---


---

# 🧱 Reporting View Design

The `vw_sales_analytics` view was created to standardise reporting.

It enriches the dataset with derived time and delivery metrics while keeping the source table unchanged.

This approach mirrors real-world analytics workflows where a curated layer supports BI tools.

---

# ▶️ Running the SQL 

The queries were written using **Microsoft SQL Server syntax**.

To reproduce the analysis:

1. Import the dataset into a table named `train`
2. Run the queries in `analysis_queries.sql`
3. Create the view `vw_sales_analytics`
4. Use the view as the data source for reporting

---

# 💼 What This SQL Work Demonstrates

This part of the project highlights the ability to:

* Perform structured exploratory data analysis
* Validate and understand data before modelling
* Write business-driven SQL queries
* Build reusable reporting datasets
* Translate raw data into analytical insights

---

# 📌 Summary

SQL played a central role in transforming raw retail transaction data into a clean, insight-ready dataset.

By combining data validation, aggregation, and modelling techniques, the analysis provided a strong foundation for visualisation and decision-making.

---

