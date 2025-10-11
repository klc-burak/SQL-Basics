-- SQL FULL OUTER JOIN Keyword

-- The FULL OUTER JOIN keyword returns all records
-- when there is a match in either the left (table1) or right (table2) table.
-- FULL OUTER JOIN and FULL JOIN are the same.

-- Syntax:
-- SELECT column_name(s)
-- FROM table1
-- FULL OUTER JOIN table2 ON table1.column_name = table2.column_name
-- WHERE condition;

-- Note: FULL OUTER JOIN can potentially return very large result sets.

-- Example: Select all customers and all orders
SELECT Customers.CustomerName, Orders.OrderID
FROM Customers
FULL OUTER JOIN Orders ON Customers.CustomerID = Orders.CustomerID
ORDER BY Customers.CustomerName;

-- Explanation:
-- FULL OUTER JOIN returns all matching records from both tables,
-- as well as non-matching records from both tables.
-- Non-matching values will display NULL for columns from the other table.