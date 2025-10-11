-- SQL COUNT() Function
-- The COUNT() function returns the number of rows that match a specified criterion.

-- Demo Table: Products
-- ProductID  | ProductName                  | SupplierID | CategoryID | Unit               | Price
-- -----------|------------------------------|------------|------------|--------------------|------
-- 1          | Chais                        | 1          | 1          | 10 boxes x 20 bags | 18
-- 2          | Chang                        | 1          | 1          | 24 - 12 oz bottles | 19
-- 3          | Aniseed Syrup                | 1          | 2          | 12 - 550 ml bottles| 10
-- 4          | Chef Anton's Cajun Seasoning | 2          | 2          | 48 - 6 oz jars     | 22
-- 5          | Chef Anton's Gumbo Mix       | 2          | 2          | 36 boxes           | 21.35


-- Example 1: COUNT(*) - Find the total number of rows in the Products table
SELECT COUNT(*) AS TotalRows
FROM Products;

-- Example 2: COUNT(column_name) - Count non-NULL values in a column
SELECT COUNT(ProductName) AS ProductsWithName
FROM Products;

-- Example 3: COUNT() with a WHERE clause - Count products with Price > 20
SELECT COUNT(ProductID) AS ProductsAbove20
FROM Products
WHERE Price > 20;

-- Example 4: COUNT(DISTINCT column_name) - Count unique values
SELECT COUNT(DISTINCT Price) AS UniquePrices
FROM Products;

-- Example 5: Use COUNT() with GROUP BY - Count number of products per CategoryID
SELECT CategoryID, COUNT(*) AS NumberOfProducts
FROM Products
GROUP BY CategoryID;

-- Example 6: Use COUNT() with WHERE and GROUP BY
-- Count products per category where Price > 15
SELECT CategoryID, COUNT(*) AS ProductsAbove15
FROM Products
WHERE Price > 15
GROUP BY CategoryID;

-- Notes:
-- - COUNT(*) counts all rows, including NULLs.
-- - COUNT(column_name) counts only non-NULL values in that column.
-- - COUNT(DISTINCT column_name) counts unique non-NULL values.
-- - Use AS to rename the result column for readability.
-- - Combine with WHERE and GROUP BY to filter and group results.