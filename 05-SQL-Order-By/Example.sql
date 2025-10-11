-- SQL ORDER BY Examples
-- The ORDER BY keyword sorts the result set in ascending (default) or descending order.

-- Sort products by price (ascending)
SELECT *
FROM Products
ORDER BY Price;

-- Sort products by price (descending)
SELECT *
FROM Products
ORDER BY Price DESC;

-- Sort products alphabetically by ProductName
SELECT *
FROM Products
ORDER BY ProductName;

-- Sort products reverse alphabetically by ProductName
SELECT *
FROM Products
ORDER BY ProductName DESC;

-- Sort customers by multiple columns: first by Country, then by CustomerName
SELECT *
FROM Customers
ORDER BY Country, CustomerName;

-- Sort customers by multiple columns with different orders
-- Country ascending, CustomerName descending
SELECT *
FROM Customers
ORDER BY Country ASC, CustomerName DESC;

-- Explanation:
-- ASC  : ascending order (default)
-- DESC : descending order
-- Multiple columns in ORDER BY: primary sort first, secondary sort next
