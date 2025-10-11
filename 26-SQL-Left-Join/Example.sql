-- SQL LEFT JOIN Keyword

-- The LEFT JOIN keyword returns all records from the left table (table1),
-- and the matching records from the right table (table2).
-- The result includes all records from the left table,
-- and NULL values for records in the right table with no match.

-- Syntax:
-- SELECT column_name(s)
-- FROM table1
-- LEFT JOIN table2 ON table1.column_name = table2.column_name;

-- Note: In some databases, LEFT JOIN is called LEFT OUTER JOIN.

-- Example: Select all customers and any orders they might have
SELECT Customers.CustomerName, Orders.OrderID
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID
ORDER BY Customers.CustomerName;

-- Explanation:
-- The LEFT JOIN keyword returns all records from the "Customers" table (left table),
-- even if there are no corresponding records in the "Orders" table (right table).
-- When no match is found, columns from the "Orders" table will contain NULL values.