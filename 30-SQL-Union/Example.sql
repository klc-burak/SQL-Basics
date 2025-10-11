-- SQL UNION Operator

-- The UNION operator combines the result-set of two or more SELECT statements.
-- It automatically removes duplicate rows from the final result.

-- Requirements for UNION:
-- 1. Each SELECT must have the same number of columns.
-- 2. Columns must have compatible data types.
-- 3. Columns must be in the same order in each SELECT.

-- Syntax:
-- SELECT column_name(s)
-- FROM table1
-- UNION
-- SELECT column_name(s)
-- FROM table2;

-- Example 1: Get distinct cities from both Customers and Suppliers
SELECT City
FROM Customers
UNION
SELECT City
FROM Suppliers
ORDER BY City;

-- Example 2: Get German cities from both Customers and Suppliers
SELECT City, Country
FROM Customers
WHERE Country='Germany'
UNION
SELECT City, Country
FROM Suppliers
WHERE Country='Germany'
ORDER BY City;

-- Example 3: List all contacts as either Customer or Supplier
SELECT 'Customer' AS Type, ContactName, City, Country
FROM Customers
UNION
SELECT 'Supplier', ContactName, City, Country
FROM Suppliers;

-- Notes:
-- 1. UNION selects only distinct values; use UNION ALL to include duplicates.
-- 2. Aliases can be used to give temporary names to columns, as shown with 'Type'.