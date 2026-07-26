-- Average product price
SELECT AVG(Price) AS Average_price
FROM sales;

-- Lowest product price
SELECT MIN(Price) AS Lowest_Price
FROM sales;

-- Highest product price
SELECT MAX(Price) AS Highest_Price
FROM sales;

-- Total revenue
SELECT SUM(Price * Quantity) AS Total_revneue
FROM sales;