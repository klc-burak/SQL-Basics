-- SQL SELECT INTO Statement
-- Copies data from one table into a new table.

-- Syntax: Copy all columns into a new table
SELECT *
INTO newtable [IN externaldb]
FROM oldtable
WHERE condition;

-- Syntax: Copy only some columns into a new table
SELECT column1, column2, column3, ...
INTO newtable [IN externaldb]
FROM oldtable
WHERE condition;

-- Examples:
-- 1. Create a backup copy of the Customers table
SELECT *
INTO CustomersBackup2017
FROM Customers;

-- 2. Copy table into a new table in another database using IN clause
SELECT *
INTO CustomersBackup2017 IN 'Backup.mdb'
FROM Customers;

-- 3. Copy only specific columns into a new table
SELECT CustomerName, ContactName
INTO CustomersBackup2017
FROM Customers;

-- 4. Copy only German customers into a new table
SELECT *
INTO CustomersGermany
FROM Customers
WHERE Country = 'Germany';

-- 5. Copy data from more than one table into a new table
SELECT Customers.CustomerName, Orders.OrderID
INTO CustomersOrderBackup2017
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

-- 6. Create a new empty table using the schema of another
SELECT *
INTO newtable
FROM oldtable
WHERE 1 = 0;