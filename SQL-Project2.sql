USE SalesBusinessDB;
GO

SELECT TOP 10 *
FROM Sales_Business_Performance;

SELECT COUNT(*) AS TotalRows
FROM Sales_Business_Performance;

SELECT SUM(Sales) AS TotalSales
FROM Sales_Business_Performance;

SELECT SUM(Profit) AS TotalProfit
FROM Sales_Business_Performance;

SELECT COUNT(DISTINCT Order_ID) AS TotalOrders
FROM Sales_Business_Performance;

SELECT COUNT(DISTINCT Customer_ID) AS TotalCustomers
FROM Sales_Business_Performance;

SELECT AVG(Sales) AS Average_Sales
FROM Sales_Business_Performance;

SELECT MAX(Sales) AS Highest_Sale
FROM Sales_Business_Performance;

SELECT MIN(Sales) AS Lowest_Sale
FROM Sales_Business_Performance;

SELECT SUM(Quantity) AS Total_Quantity
FROM Sales_Business_Performance;

SELECT AVG(Discount) * 100 AS Average_Discount_Percentage
FROM Sales_Business_Performance;

SELECT
    ROUND((SUM(Profit) / SUM(Sales)) * 100, 2) AS Profit_Margin_Percentage
FROM Sales_Business_Performance;

SELECT Category,
       SUM(Sales) AS Total_Sales
FROM Sales_Business_Performance
GROUP BY Category
ORDER BY Total_Sales DESC;

SELECT Category,
       SUM(Profit) AS Total_Profit
FROM Sales_Business_Performance
GROUP BY Category
ORDER BY Total_Profit DESC;

SELECT Region,
       SUM(Sales) AS Total_Sales
FROM Sales_Business_Performance
GROUP BY Region
ORDER BY Total_Sales DESC;

SELECT Region,
       SUM(Profit) AS Total_Profit
FROM Sales_Business_Performance
GROUP BY Region
ORDER BY Total_Profit DESC;

SELECT State,
       SUM(Sales) AS Total_Sales
FROM Sales_Business_Performance
GROUP BY State
ORDER BY Total_Sales DESC;

SELECT TOP 10 Customer_Name,
       SUM(Sales) AS Total_Sales
FROM Sales_Business_Performance
GROUP BY Customer_Name
ORDER BY Total_Sales DESC;

SELECT TOP 10 Product_Name,
       SUM(Sales) AS Total_Sales
FROM Sales_Business_Performance
GROUP BY Product_Name
ORDER BY Total_Sales DESC;

SELECT Segment,
       SUM(Sales) AS Total_Sales
FROM Sales_Business_Performance
GROUP BY Segment
ORDER BY Total_Sales DESC;

SELECT Category,
       AVG(Discount) * 100 AS Avg_Discount_Percentage
FROM Sales_Business_Performance
GROUP BY Category
ORDER BY Avg_Discount_Percentage DESC;

SELECT Sub_Category,
       SUM(Quantity) AS Total_Quantity
FROM Sales_Business_Performance
GROUP BY Sub_Category
ORDER BY Total_Quantity DESC;

SELECT YEAR(Order_Date) AS Order_Year,
       SUM(Sales) AS Total_Sales
FROM Sales_Business_Performance
GROUP BY YEAR(Order_Date)
ORDER BY Order_Year;

SELECT YEAR(Order_Date) AS Order_Year,
       SUM(Profit) AS Total_Profit
FROM Sales_Business_Performance
GROUP BY YEAR(Order_Date)
ORDER BY Order_Year;

SELECT DATENAME(MONTH, Order_Date) AS Month_Name,
       MONTH(Order_Date) AS Month_No,
       SUM(Sales) AS Total_Sales
FROM Sales_Business_Performance
GROUP BY DATENAME(MONTH, Order_Date), MONTH(Order_Date)
ORDER BY Month_No;

SELECT DATENAME(MONTH, Order_Date) AS Month_Name,
       MONTH(Order_Date) AS Month_No,
       SUM(Profit) AS Total_Profit
FROM Sales_Business_Performance
GROUP BY DATENAME(MONTH, Order_Date), MONTH(Order_Date)
ORDER BY Month_No;

SELECT DATENAME(MONTH, Order_Date) AS Month_Name,
       MONTH(Order_Date) AS Month_No,
       COUNT(DISTINCT Order_ID) AS Total_Orders
FROM Sales_Business_Performance
GROUP BY DATENAME(MONTH, Order_Date), MONTH(Order_Date)
ORDER BY Month_No;

SELECT DATEPART(QUARTER, Order_Date) AS Quarter,
       SUM(Sales) AS Total_Sales
FROM Sales_Business_Performance
GROUP BY DATEPART(QUARTER, Order_Date)
ORDER BY Quarter;

SELECT YEAR(Order_Date) AS Order_Year,
       MONTH(Order_Date) AS Order_Month,
       SUM(Sales) AS Total_Sales
FROM Sales_Business_Performance
GROUP BY YEAR(Order_Date), MONTH(Order_Date)
ORDER BY Order_Year, Order_Month;

SELECT DATENAME(MONTH, Order_Date) AS Month_Name,
       MONTH(Order_Date) AS Month_No,
       AVG(Sales) AS Average_Sales
FROM Sales_Business_Performance
GROUP BY DATENAME(MONTH, Order_Date), MONTH(Order_Date)
ORDER BY Month_No;



