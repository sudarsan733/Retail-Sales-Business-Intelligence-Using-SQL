-- Check the first 10 records
SELECT *
FROM sales
LIMIT 5;

-- Count the total number of records
SELECT COUNT(*) AS Total_Orders
FROM sales;

-- Check all product categories
SELECT DISTINCT Category
FROM sales;

-- Check all cities
SELECT DISTINCT city
FROM sales;

-- Check payment methods
SELECT DISTINCT Payment_Method
FROM sales;

-- Check for missing customer names
SELECT *
FROM sales
WHERE Customer_Name IS NULL;

-- Check for invalid prices
SELECT *
FROM sales
WHERE Price<=0;

-- Find all sales from Chenna
SELECT *
FROM sales
WHERE City = 'Chennai';

-- Show products ordered by highest price of Top 5
SELECT *
FROM sales
ORDER BY Price DESC
LIMIT 6;
