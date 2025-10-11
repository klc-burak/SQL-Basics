-- SQL HAVING Clause

-- The HAVING clause is used to filter groups after aggregation.
-- Unlike WHERE, HAVING can be used with aggregate functions like COUNT(), SUM(), AVG(), etc.

-- Syntax:
-- SELECT column_name(s)
-- FROM table_name
-- WHERE condition
-- GROUP BY column_name(s)
-- HAVING condition
-- ORDER BY column_name(s);

-- Example 1: List countries with more than 5 customers
SELECT COUNT(CustomerID) AS NumberOfCustomers, Country
FROM Customers
GROUP BY Country
HAVING COUNT(CustomerID) > 5;

-- Example 2: List countries with more than 5 customers, sorted descending
SELECT COUNT(CustomerID) AS NumberOfCustomers, Country
FROM Customers
GROUP BY Country
HAVING COUNT(CustomerID) > 5
ORDER BY COUNT(CustomerID) DESC;

-- Example 3: List employees with more than 10 orders
SELECT Employees.LastName, COUNT(Orders.OrderID) AS NumberOfOrders
FROM Orders
INNER JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID
GROUP BY Employees.LastName
HAVING COUNT(Orders.OrderID) > 10;

-- Example 4: Check if employees "Davolio" or "Fuller" have more than 25 orders
SELECT Employees.LastName, COUNT(Orders.OrderID) AS NumberOfOrders
FROM Orders
INNER JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID
WHERE Employees.LastName IN ('Davolio', 'Fuller')
GROUP BY Employees.LastName
HAVING COUNT(Orders.OrderID) > 25;