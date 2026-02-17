## 🧾 Dataset Structure & Validation (Excel EDA)

The Excel analysis included a detailed review of dataset fields, formats, and data quality checks.

### 📊 Dataset Overview

| Parameter           | Value                              |
| ------------------- | ---------------------------------- |
| Dataset Size        | 9,800 records                      |
| Number of Columns   | 19                                 |
| Data Granularity    | Transaction line-item level        |
| Business Domain     | Retail Sales                       |
| Geographic Coverage | USA                                |
| Analytical Scope    | Time, Product, Customer, Geography |

---

### 🧩 Field-Level Observations

| Field         | Type    | Observation                                                                           |
| ------------- | ------- | ------------------------------------------------------------------------------------- |
| Order ID      | General | Dataset operates at transaction line-item level, allowing multiple products per order |
| Order Date    | Date    | Stored in correct date format                                                         |
| Ship Date     | Date    | Occurs on or after order date, confirming valid timelines                             |
|               |         | Dataset supports time-series analysis due to presence of order date                   |
| Ship Mode     | General | Shipping method captured per order                                                    |
| Customer ID   | General | Unique customer identifier                                                            |
| Customer Name | General | Customer details available for segmentation                                           |
| Segment       | General | Supports customer segmentation analysis                                               |
| Country       | General | Contains a single value (USA)                                                         |
| City          | General | Geographic detail available                                                           |
| State         | General | Enables regional performance analysis                                                 |
| Postal Code   | General | Contains some missing values                                                          |
| Region        | General | Hierarchical geography (Region → State → City)                                        |
| Product ID    | General | Unique product identifier                                                             |
| Category      | General | Structured product hierarchy                                                          |
| Sub-Category  | General | Enables detailed product analysis                                                     |
| Product Name  | General | Descriptive product information                                                       |
| Sales         | General | Monetary field (currency format recommended)                                          |

---

### ✅ Data Quality Checks

* Shipment dates occur after order dates
* Dataset supports time-series analysis
* Postal code contains minor missing values
* No duplicate transaction records identified

---

### 💡 Interpretation

The dataset is well-structured for multi-dimensional analysis, supporting:

* Time-series trend analysis
* Customer behaviour analysis
* Product performance analysis
* Geographic performance analysis

Overall, data quality is high and suitable for analytical modelling.

---
