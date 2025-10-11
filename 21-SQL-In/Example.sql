-- The SQL IN Operator

-- The IN operator allows you to specify multiple values in a WHERE clause.
-- It is a shorthand for using multiple OR conditions.

-- Example 1: Return all customers from 'Germany', 'France', or 'UK'
SELECT *
FROM Customers
WHERE Country IN ('Germany', 'France', 'UK');

-- Syntax:
-- SELECT column_name(s)
-- FROM table_name
-- WHERE column_name IN (value1, value2, ...);

-- Example 2: Return all customers that are NOT from 'Germany', 'France', or 'UK'
SELECT *
FROM Customers
WHERE Country NOT IN ('Germany', 'France', 'UK');

-- Example 3: Use IN with a subquery
-- Return all customers that have an order in the Orders table
SELECT *
FROM Customers
WHERE CustomerID IN (SELECT CustomerID
                     FROM Orders);

-- Example 4: Use NOT IN with a subquery
-- Return all customers that have NOT placed any orders in the Orders table
SELECT *
FROM Customers
WHERE CustomerID NOT IN (SELECT CustomerID
                         FROM Orders);