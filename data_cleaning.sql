-- Check for missing customer names
SELECT *
FROM sales
WHERE Customer_ID IS NULL;

-- Check for duplicate Order IDs
SELECT Order_ID,COUNT(*) AS Total_ID
FROM sales
GROUP BY Order_ID 
HAVING COUNT(*) >1;

-- Find sales where the price is between 500 and 1000
SELECT *
FROM sales
WHERE Price BETWEEN 500 AND 1000;

-- Find customers whose name starts with 'A'
SELECT *
FROM sales
WHERE Customer_Name LIKE '%A';



