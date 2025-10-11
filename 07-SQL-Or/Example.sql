-- SQL OR Operator Examples
-- The OR operator is used to filter records if ANY of the conditions are TRUE.
-- It is often combined with AND and parentheses for complex filtering.

-- Example 1: Select all customers from Germany OR Spain
SELECT *
FROM Customers
WHERE Country = 'Germany' OR Country = 'Spain';

-- Example 2: Multiple OR conditions
-- Select all customers where either:
--   - the city is Berlin,
--   - the customer name starts with 'G', or
--   - the country is Norway
SELECT *
FROM Customers
WHERE City = 'Berlin' OR CustomerName LIKE 'G%' OR Country = 'Norway';

-- Example 3: Combining AND and OR
-- Select all Spanish customers whose names start with 'G' or 'R'
-- Parentheses ensure the OR conditions are grouped correctly
SELECT *
FROM Customers
WHERE Country = 'Spain' AND (CustomerName LIKE 'G%' OR CustomerName LIKE 'R%');

-- Summary:
--   OR → at least one condition must be TRUE
--   AND → all conditions must be TRUE
--   Always use parentheses () to define the intended logic