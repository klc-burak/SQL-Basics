-- SQL NOT Operator Examples
-- The NOT operator is used to reverse the result of a condition.
-- It can be combined with =, <, >, LIKE, BETWEEN, IN, etc.
-- It returns the opposite (negative) result of the condition.

-- Example 1: NOT with =
-- Select all customers that are NOT from Spain
SELECT *
FROM Customers
WHERE NOT Country = 'Spain';

-- Example 2: NOT LIKE
-- Select all customers whose names do NOT start with 'A'
SELECT *
FROM Customers
WHERE CustomerName NOT LIKE 'A%';

-- Example 3: NOT BETWEEN
-- Select all customers whose CustomerID is NOT between 10 and 60
SELECT *
FROM Customers
WHERE CustomerID NOT BETWEEN 10 AND 60;

-- Example 4: NOT IN
-- Select all customers that are NOT from Paris or London
SELECT *
FROM Customers
WHERE City NOT IN ('Paris', 'London');

-- Example 5: NOT with >
-- Select all customers whose CustomerID is NOT greater than 50
SELECT *
FROM Customers
WHERE NOT CustomerID > 50;

-- Example 6: NOT with <
-- Select all customers whose CustomerID is NOT less than 50
SELECT *
FROM Customers
WHERE NOT CustomerID < 50;

-- Summary:
--   NOT reverses a condition:
--     - NOT = means "not equal"
--     - NOT LIKE means "pattern does not match"
--     - NOT BETWEEN means "outside the range"
--     - NOT IN means "value not in list"