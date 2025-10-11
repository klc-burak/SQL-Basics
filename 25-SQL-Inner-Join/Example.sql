-- SQL INNER JOIN

-- The INNER JOIN keyword selects records that have matching values in both tables.

-- Example: Join Products and Categories by CategoryID

SELECT ProductID, ProductName, CategoryName
FROM Products
INNER JOIN Categories ON Products.CategoryID = Categories.CategoryID;

-- Syntax:
-- SELECT column_name(s)
-- FROM table1
-- INNER JOIN table2 ON table1.column_name = table2.column_name;

-- The INNER JOIN keyword returns only rows with a match in both tables.
-- If a record in one table has no corresponding match in the other, it will not appear in the result.

-- Naming Columns (Best Practice)
SELECT Products.ProductID, Products.ProductName, Categories.CategoryName
FROM Products
INNER JOIN Categories ON Products.CategoryID = Categories.CategoryID;

-- JOIN or INNER JOIN produce the same result, since INNER is the default join type.
SELECT Products.ProductID, Products.ProductName, Categories.CategoryName
FROM Products
JOIN Categories ON Products.CategoryID = Categories.CategoryID;

-- INNER JOIN Between Three Tables:
SELECT Orders.OrderID, Customers.CustomerName, Shippers.ShipperName
FROM ((Orders
INNER JOIN Customers ON Orders.CustomerID = Customers.CustomerID)
INNER JOIN Shippers ON Orders.ShipperID = Shippers.ShipperID);