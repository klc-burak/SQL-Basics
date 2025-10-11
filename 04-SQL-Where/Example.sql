-- SQL WHERE Clause Examples
-- The WHERE clause filters records based on a specified condition.

-- Select all customers from Mexico
SELECT *
FROM Customers
WHERE Country= 'Mexico';

-- Explanation:
-- WHERE : filters rows that meet the condition
-- For text fields, enclose the value in single quotes ('Mexico')
-- For numeric fields, do NOT use quotes
-- Example: Select customer with ID 1
SELECT *
FROM Customers
WHERE CustomerID=1;

-- Using other operators in WHERE clause
-- Select all customers with CustomerID greater than 80
SELECT *
FROM Customers
WHERE CustomerID > 80;

-- Common operators in WHERE clause:
-- =    : equal
-- >    : greater than
-- <    : less than
-- >=   : greater than or equal
-- <=   : less than or equal
-- <> or != : not equal
-- BETWEEN  : select values within a range
-- LIKE     : search for a pattern
-- IN       : specify multiple possible values
