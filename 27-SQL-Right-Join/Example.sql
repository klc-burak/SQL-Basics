-- SQL RIGHT JOIN Keyword

-- The RIGHT JOIN keyword returns all records from the right table (table2),
-- and the matching records from the left table (table1).
-- The result includes all records from the right table,
-- and NULL values for records in the left table with no match.

-- Syntax:
-- SELECT column_name(s)
-- FROM table1
-- RIGHT JOIN table2 ON table1.column_name = table2.column_name;

-- Note: In some databases, RIGHT JOIN is called RIGHT OUTER JOIN.

-- Example: Return all employees and any orders they might have placed
SELECT Orders.OrderID, Employees.LastName, Employees.FirstName
FROM Orders
RIGHT JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID
ORDER BY Orders.OrderID;

-- Explanation:
-- The RIGHT JOIN keyword returns all records from the "Employees" table (right table),
-- even if there are no corresponding records in the "Orders" table (left table).
-- When no match is found, columns from the "Orders" table will contain NULL values.