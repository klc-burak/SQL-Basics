-- Handling NULL values in different SQL dialects

-- MySQL
-- IFNULL(): return alternative if NULL
SELECT ProductName, UnitPrice * (UnitsInStock + IFNULL(UnitsOnOrder, 0)) AS TotalValue
FROM Products;

-- COALESCE(): return first non-NULL value
SELECT ProductName, UnitPrice * (UnitsInStock + COALESCE(UnitsOnOrder, 0)) AS TotalValue
FROM Products;

-- SQL Server
-- ISNULL(): return alternative if NULL
SELECT ProductName, UnitPrice * (UnitsInStock + ISNULL(UnitsOnOrder, 0)) AS TotalValue
FROM Products;

-- COALESCE() works in SQL Server too
SELECT ProductName, UnitPrice * (UnitsInStock + COALESCE(UnitsOnOrder, 0)) AS TotalValue
FROM Products;

-- MS Access
-- IsNull() with IIF
SELECT ProductName, UnitPrice * (UnitsInStock + IIF(IsNull(UnitsOnOrder), 0, UnitsOnOrder)) AS TotalValue
FROM Products;

-- Oracle
-- NVL(): return alternative if NULL
SELECT ProductName, UnitPrice * (UnitsInStock + NVL(UnitsOnOrder, 0)) AS TotalValue
FROM Products;

-- COALESCE() works in Oracle too
SELECT ProductName, UnitPrice * (UnitsInStock + COALESCE(UnitsOnOrder, 0)) AS TotalValue
FROM Products;