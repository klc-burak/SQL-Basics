-- SQL AND / OR Operator Examples
-- The AND operator is used to filter records that meet ALL conditions.
-- The OR operator is used to filter records that meet ANY condition.

-- Example 1: Select all customers from Spain whose name starts with 'G'
SELECT *
FROM Customers
WHERE Country = 'Spain' AND CustomerName LIKE 'G%';

-- Example 2: All conditions must be TRUE
-- Select all customers from Brazil, city 'Rio de Janeiro', with CustomerID greater than 50
SELECT *
FROM Customers
WHERE Country = 'Brazil' AND City = 'Rio de Janeiro' AND CustomerID > 50;

-- Example 3: Combining AND and OR
-- Select all Spanish customers whose names start with 'G' or 'R'
-- Parentheses ensure correct logical grouping
SELECT *
FROM Customers
WHERE Country = 'Spain' AND (CustomerName LIKE 'G%' OR CustomerName LIKE 'R%');

-- Example 4: Without parentheses — gives a different result!
-- This will return:
--  - all customers from Spain whose names start with 'G'
--  - all customers (from any country) whose names start with 'R'
SELECT *
FROM Customers
WHERE Country = 'Spain' AND CustomerName LIKE 'G%' OR CustomerName LIKE 'R%';