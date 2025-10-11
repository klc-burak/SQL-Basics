-- SQL INSERT INTO SELECT Statement
-- Copies data from one table and inserts it into another table.
-- Note: Existing records in the target table are unaffected.

-- Syntax: Copy all columns from one table to another table
INSERT INTO table2
SELECT *
FROM table1
WHERE condition;

-- Syntax: Copy only some columns from one table into another table
INSERT INTO table2 (column1, column2, column3, ...)
SELECT column1, column2, column3, ...
FROM table1
WHERE condition;

-- Examples:

-- 1. Copy "Suppliers" into "Customers" (columns not filled will contain NULL)
INSERT INTO Customers (CustomerName, City, Country)
SELECT SupplierName, City, Country
FROM Suppliers;

-- 2. Copy "Suppliers" into "Customers" (fill all columns)
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)
SELECT SupplierName, ContactName, Address, City, PostalCode, Country
FROM Suppliers;

-- 3. Copy only the German suppliers into "Customers"
INSERT INTO Customers (CustomerName, City, Country)
SELECT SupplierName, City, Country
FROM Suppliers
WHERE Country='Germany';