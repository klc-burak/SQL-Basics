-- The SQL BETWEEN Operator
-- The BETWEEN operator selects values within a given range.
-- It can be used with numbers, text, or dates.
-- The BETWEEN operator is inclusive (includes both boundary values).

-- Example 1: Select all products with a price between 10 and 20
SELECT *
FROM Products
WHERE Price BETWEEN 10 AND 20;

-- Syntax:
-- SELECT column_name(s)
-- FROM table_name
-- WHERE column_name BETWEEN value1 AND value2;

-- Example 2: Select all products with a price NOT between 10 and 20
SELECT *
FROM Products
WHERE Price NOT BETWEEN 10 AND 20;

-- Example 3: Use BETWEEN together with IN
-- Select all products with a price between 10 and 20
-- AND CategoryID must be either 1, 2, or 3
SELECT *
FROM Products
WHERE Price BETWEEN 10 AND 20 AND CategoryID IN (1, 2, 3);

-- Example 4: BETWEEN with text values
-- Select all products with ProductName alphabetically
-- between 'Carnarvon Tigers' and 'Mozzarella di Giovanni'
SELECT *
FROM Products
WHERE ProductName BETWEEN 'Carnarvon Tigers' AND 'Mozzarella di Giovanni'
ORDER BY ProductName;

-- Example 5: BETWEEN with text values (alternative)
-- Select all products with ProductName between
-- 'Carnarvon Tigers' and "Chef Anton's Cajun Seasoning"
SELECT *
FROM Products
WHERE ProductName BETWEEN 'Carnarvon Tigers' AND 'Chef Anton''s Cajun Seasoning'
ORDER BY ProductName;

-- Example 6: NOT BETWEEN with text values
-- Select all products with ProductName NOT between
-- 'Carnarvon Tigers' and 'Mozzarella di Giovanni'
SELECT *
FROM Products
WHERE ProductName NOT BETWEEN 'Carnarvon Tigers' AND 'Mozzarella di Giovanni'
ORDER BY ProductName;

-- Example 7: BETWEEN with dates
-- Select all orders with OrderDate between '01-July-1996' and '31-July-1996'
SELECT *
FROM Orders
WHERE OrderDate BETWEEN '1996-07-01' AND '1996-07-31';