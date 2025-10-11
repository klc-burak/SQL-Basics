-- SQL EXISTS Operator

-- The EXISTS operator tests whether any record exists in a subquery.
-- It returns TRUE if the subquery returns one or more rows.

-- Syntax:
SELECT column_name(s)
FROM table_name
WHERE EXISTS (SELECT column_name
              FROM table_name
              WHERE condition);

-- Example 1:
-- List suppliers that have any product with a price less than 20.
SELECT SupplierName
FROM Suppliers
WHERE EXISTS (SELECT ProductName
              FROM Products
              WHERE Products.SupplierID = Suppliers.SupplierID AND Price < 20);

-- Example 2:
-- List suppliers that have any product with a price equal to 22.
SELECT SupplierName
FROM Suppliers
WHERE EXISTS (SELECT ProductName
              FROM Products
              WHERE Products.SupplierID = Suppliers.SupplierID AND Price = 22);