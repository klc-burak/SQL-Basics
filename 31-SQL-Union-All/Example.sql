-- SQL UNION ALL Operator

-- The UNION ALL operator combines the result-set of two or more SELECT statements.
-- Unlike UNION, it includes all rows, including duplicates.

-- Requirements for UNION ALL:
-- 1. Each SELECT must have the same number of columns.
-- 2. Columns must have compatible data types.
-- 3. Columns must be in the same order in each SELECT.

-- Syntax:
-- SELECT column_name(s)
-- FROM table1
-- UNION ALL
-- SELECT column_name(s)
-- FROM table2;

-- Example 1: Get all cities from both Customers and Suppliers (including duplicates)
SELECT City
FROM Customers
UNION ALL
SELECT City
FROM Suppliers
ORDER BY City;

-- Example 2: Get all German cities from both Customers and Suppliers (including duplicates)
SELECT City, Country
FROM Customers
WHERE Country='Germany'
UNION ALL
SELECT City, Country
FROM Suppliers
WHERE Country='Germany'
ORDER BY City;

-- Notes:
-- 1. UNION ALL keeps duplicate values, unlike UNION which removes them.
-- 2. Column names in the result-set are usually taken from the first SELECT statement.