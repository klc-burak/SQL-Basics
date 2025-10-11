-- SQL INSERT INTO Statement
-- The INSERT INTO statement is used to insert new records into a table.
-- It can be written in two ways:
-- 1. With column names
-- 2️. Without column names (if inserting into all columns)

-- Example 1: Insert with specified columns
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES ('Cardinal', 'Tom B. Erichsen', 'Skagen 21', 'Stavanger', '4006', 'Norway');

-- Example 2: Insert without specifying column names
-- (Use only if you are inserting into ALL columns, in the same order)
INSERT INTO Customers
VALUES (NULL, 'Greasy Burger', 'Per Olsen', 'Gateveien 15', 'Sandnes', '4306', 'Norway');

-- Note: If "CustomerID" is AUTO INCREMENT, you can omit it or use NULL.

-- Example 3: Insert data into specific columns only
-- Columns not listed will take default values (NULL or DEFAULT)
INSERT INTO Customers (CustomerName, City, Country)
VALUES ('Tasty Tee', 'Liverpool', 'UK');

-- Example 4: Insert multiple rows in one statement
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES ('Nordic Foods', 'Eva Jansen', 'Storgata 12', 'Oslo', '0155', 'Norway'),
       ('La Baguette', 'Pierre Dupont', 'Rue Saint-Honoré 24', 'Paris', '75001', 'France'),
       ('Roma Pizza', 'Luigi Rossi', 'Via Roma 8', 'Rome', '00100', 'Italy');

-- Tips:
-- Use single quotes for string/text values.
-- Use NULL for missing values in non-required columns.
-- To insert multiple rows, separate each value set with commas (,).
-- Auto-increment columns will be filled automatically by the database.