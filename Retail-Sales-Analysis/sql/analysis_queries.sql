/* =====================================================
   RETAIL SALES — SQL EXPLORATORY DATA ANALYSIS
   Dataset: dbo.train
   ===================================================== */

/* 1️⃣ Total number of rows */
SELECT COUNT(*) AS Total_Rows
FROM dbo.train;


/* 2️⃣ Check for unexpected NULL values */
SELECT
    SUM(CASE WHEN Order_ID IS NULL THEN 1 ELSE 0 END) AS Order_ID_Nulls,
    SUM(CASE WHEN Order_Date IS NULL THEN 1 ELSE 0 END) AS Order_Date_Nulls,
    SUM(CASE WHEN Ship_Date IS NULL THEN 1 ELSE 0 END) AS Ship_Date_Nulls,
    SUM(CASE WHEN Postal_Code IS NULL THEN 1 ELSE 0 END) AS Postal_Code_Nulls,
    SUM(CASE WHEN Sales IS NULL THEN 1 ELSE 0 END) AS Sales_Nulls
FROM dbo.train;


/* 3️⃣ Validate Order_ID duplication (expected behaviour) */
SELECT
    Order_ID,
    COUNT(Order_ID) AS Line_Items
FROM dbo.train
GROUP BY Order_ID
HAVING COUNT(Order_ID) > 1
ORDER BY Line_Items DESC;


/* 4️⃣ Date sanity check */
SELECT
    MIN(Order_Date) AS First_Order_Date,
    MAX(Order_Date) AS Last_Order_Date,
    MIN(Ship_Date) AS First_Ship_Date,
    MAX(Ship_Date) AS Last_Ship_Date
FROM dbo.train;


/* 5️⃣ Total Sales */
SELECT
    SUM(Sales) AS Total_Sales
FROM dbo.train;


/* 6️⃣ Sales by Year */
SELECT
    YEAR(Order_Date) AS Order_Year,
    SUM(Sales) AS Total_Sales
FROM dbo.train
GROUP BY YEAR(Order_Date)
ORDER BY Order_Year;


/* 7️⃣ Sales by Region */
SELECT
    Region,
    SUM(Sales) AS Total_Sales
FROM dbo.train
GROUP BY Region
ORDER BY Total_Sales DESC;


/* 8️⃣ Sales by Category */
SELECT
    Category,
    SUM(Sales) AS Total_Sales
FROM dbo.train
GROUP BY Category
ORDER BY Total_Sales DESC;


/* 9️⃣ Top 10 States by Sales */
SELECT TOP 10
    State,
    SUM(Sales) AS Total_Sales
FROM dbo.train
GROUP BY State
ORDER BY Total_Sales DESC;


/* 🔟 Average Discount by Category */
SELECT
    Category,
    AVG(Discount) AS Avg_Discount
FROM dbo.train
GROUP BY Category
ORDER BY Avg_Discount DESC;


/* 11️⃣ Profit by Category */
SELECT
    Category,
    SUM(Profit) AS Total_Profit
FROM dbo.train
GROUP BY Category
ORDER BY Total_Profit DESC;


/* 12️⃣ Monthly Sales Trend */
SELECT
    YEAR(Order_Date) AS Order_Year,
    MONTH(Order_Date) AS Order_Month,
    SUM(Sales) AS Monthly_Sales
FROM dbo.train
GROUP BY YEAR(Order_Date), MONTH(Order_Date)
ORDER BY Order_Year, Order_Month;


/* 13️⃣ Top Customers by Sales */
SELECT TOP 10
    Customer_Name,
    SUM(Sales) AS Total_Sales
FROM dbo.train
GROUP BY Customer_Name
ORDER BY Total_Sales DESC;


/* =====================================================
   END OF SQL EDA SCRIPT
   ===================================================== */
/* =====================================================
   REPORTING VIEW — ANALYTICS LAYER
   Purpose: Create reusable dataset for BI tools
   ===================================================== */

CREATE VIEW dbo.vw_sales_analytics AS
SELECT
    Row_ID,
    Order_ID,
    Order_Date,
    YEAR(Order_Date) AS Order_Year,
    MONTH(Order_Date) AS Order_Month,
    DATENAME(MONTH, Order_Date) AS Order_Month_Name,
    Ship_Date,
    DATEDIFF(DAY, Order_Date, Ship_Date) AS Delivery_Days,
    Customer_ID,
    Customer_Name,
    Segment,
    Region,
    State,
    Category,
    Sub_Category,
    Sales
FROM dbo.train;
GO


/* =====================================================
   PREVIEW VIEW OUTPUT
   ===================================================== */

SELECT TOP 10 *
FROM dbo.vw_sales_analytics;

