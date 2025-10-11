-- SQL AVG() Function
-- The AVG() function returns the average value of a numeric column.

-- Demo Table: Products
-- ProductID | ProductName                  | SupplierID | CategoryID | Unit                | Price
-- ----------|------------------------------|------------|------------|---------------------|------
-- 1         | Chais                        | 1          | 1          | 10 boxes x 20 bags  | 18
-- 2         | Chang                        | 1          | 1          | 24 - 12 oz bottles  | 19
-- 3         | Aniseed Syrup                | 1          | 2          | 12 - 550 ml bottles | 10
-- 4         | Chef Anton's Cajun Seasoning | 2          | 2          | 48 - 6 oz jars      | 22
-- 5         | Chef Anton's Gumbo Mix       | 2          | 2          | 36 boxes            | 21.35


-- Example 1: Average price of all products
SELECT AVG(Price) AS AveragePrice
FROM Products;

-- Example 2: Average price with a WHERE clause - Products in CategoryID 1
SELECT AVG(Price) AS AveragePrice_Category1
FROM Products
WHERE CategoryID = 1;

-- Example 3: Use AVG() with GROUP BY - Average price per category
SELECT CategoryID, AVG(Price) AS AveragePrice
FROM Products
GROUP BY CategoryID;

-- Example 4: List products with a higher price than average
SELECT *
FROM Products
WHERE Price > (SELECT AVG(Price)
               FROM Products);

-- Notes:
-- - AVG() ignores NULL values automatically.
-- - Use AS to give a descriptive name to the resulting column.
-- - Combine with WHERE to filter rows before averaging.
-- - Combine with GROUP BY to calculate averages per group.
-- - AVG() can be used in subqueries to compare individual values to the average.