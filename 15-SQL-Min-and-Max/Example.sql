-- SQL MIN() and MAX() Functions
-- The MIN() function returns the smallest value of the selected column.
-- The MAX() function returns the largest value of the selected column.

-- Demo Table: Products
-- ProductID  | ProductName                  | SupplierID  | CategoryID  | Unit                | Price
-- -----------|------------------------------|-------------|-------------|---------------------|------
-- 1          | Chais                        | 1           | 1           | 10 boxes x 20 bags  | 18
-- 2          | Chang                        | 1           | 1           | 24 - 12 oz bottles  | 19
-- 3          | Aniseed Syrup                | 1           | 2           | 12 - 550 ml bottles | 10
-- 4          | Chef Anton's Cajun Seasoning | 2           | 2           | 48 - 6 oz jars      | 22
-- 5          | Chef Anton's Gumbo Mix       | 2           | 2           | 36 boxes            | 21.35


-- Example 1: MIN() - Find the lowest price in the Price column
SELECT MIN(Price) AS SmallestPrice
FROM Products;

-- Example 2: MAX() - Find the highest price in the Price column
SELECT MAX(Price) AS LargestPrice
FROM Products;

-- Example 3: Using MIN() and MAX() with a condition
-- Find the smallest and largest price among products in CategoryID = 2
SELECT MIN(Price) AS SmallestPriceInCategory2, MAX(Price) AS LargestPriceInCategory2
FROM Products
WHERE CategoryID = 2;

-- Example 4: Use MIN() with GROUP BY
-- Return the smallest price for each category
SELECT CategoryID, MIN(Price) AS SmallestPrice
FROM Products
GROUP BY CategoryID;

-- Example 5: Use MAX() with GROUP BY
-- Return the highest price for each category
SELECT CategoryID, MAX(Price) AS HighestPrice
FROM Products
GROUP BY CategoryID;

-- Notes:
-- - MIN() and MAX() work for both numeric and date columns.
-- - When used without GROUP BY, they calculate over the whole table.
-- - When used with GROUP BY, they calculate per group/category.
-- - Use AS to rename result columns for readability.