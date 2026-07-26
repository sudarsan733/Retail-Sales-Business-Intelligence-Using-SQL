-- Top 10 customers by total spending
SELECT Customer_Name , SUM(Quantity * Price) AS Total_Spending
FROM sales
GROUP BY Customer_Name
ORDER BY Total_Spending DESC
LIMIT 10;

-- Customers who purchased the most items
SELECT Customer_Name , SUM(Quantity) AS Total_items
FROM sales
GROUP BY Customer_Name
ORDER BY Total_items DESC
LIMIT 10;

-- How many orders has each customer placed?
SELECT Customer_Names,COUNT(Order_ID) AS Total_orders
FROM sales
GROUP BY Customer_Name
ORDER BY Total_orders DESC;

