-- SQL SELECT DISTINCT Statement Example
-- The SELECT DISTINCT statement returns only unique (different) values from a column.

-- Select all different countries from the Customers table
SELECT DISTINCT Country
FROM Customers;

-- Explanation:
-- DISTINCT : ensures that duplicate values are removed
-- SELECT DISTINCT column1, column2, ...
-- FROM table_name

-- Example without DISTINCT (duplicates included)
SELECT Country
FROM Customers;

-- Explanation:
-- This will return all records including duplicates in the "Country" column

-- Count distinct values
SELECT COUNT(DISTINCT Country)
FROM Customers;