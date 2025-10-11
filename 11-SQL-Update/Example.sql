-- SQL UPDATE Statement
-- The UPDATE statement is used to modify existing records in a table.

-- Without a WHERE clause, all rows will be updated.

-- Basic Syntax:
-- UPDATE table_name
-- SET column1 = value1, column2 = value2, ...
-- WHERE condition;

-- Demo Table: Customers
-- CustomerID  | CustomerName                        | ContactName        | Address                  | City         | PostalCode | Country
-- ------------|------------------------------------|--------------------|--------------------------|--------------|------------|--------
-- 1           | Alfreds Futterkiste                | Maria Anders       | Obere Str. 57            | Berlin       | 12209      | Germany
-- 2           | Ana Trujillo Emparedados y helados | Ana Trujillo       | Avda. de la Constitución | México D.F.  | 05021      | Mexico
-- 3           | Antonio Moreno Taquería            | Antonio Moreno     | Mataderos 2312           | México D.F.  | 05023      | Mexico
-- 4           | Around the Horn                    | Thomas Hardy       | 120 Hanover Sq.          | London       | WA1 1DP    | UK
-- 5           | Berglunds snabbköp                 | Christina Berglund | Berguvsvägen 8           | Luleå        | S-958 22   | Sweden


-- Example 1: Update a single record
-- Update CustomerID = 1 with new ContactName and City
UPDATE Customers
SET ContactName = 'Alfred Schmidt', City = 'Frankfurt'
WHERE CustomerID = 1;

-- After update:
-- 1 | Alfreds Futterkiste | Alfred Schmidt | Obere Str. 57 | Frankfurt | 12209 | Germany


-- Example 2: Update multiple records
-- Update all customers from Mexico to have ContactName = 'Juan'
UPDATE Customers
SET ContactName = 'Juan'
WHERE Country = 'Mexico';

-- After update:
-- 2 | Ana Trujillo Emparedados y helados | Juan | Avda. de la Constitución | México D.F. | 05021 | Mexico
-- 3 | Antonio Moreno Taquería            | Juan | Mataderos 2312           | México D.F. | 05023 | Mexico


-- Example 3: Update without WHERE clause (updates ALL records!)
-- This will change ContactName to 'Juan' for every row in the table
UPDATE Customers
SET ContactName = 'Juan';

-- After update (ALL ContactName values become 'Juan'):
-- 1 | Alfreds Futterkiste                | Juan | Obere Str. 57            | Frankfurt   | 12209    | Germany
-- 2 | Ana Trujillo Emparedados y helados | Juan | Avda. de la Constitución | México D.F. | 05021    | Mexico
-- 3 | Antonio Moreno Taquería            | Juan | Mataderos 2312           | México D.F. | 05023    | Mexico
-- 4 | Around the Horn                    | Juan | 120 Hanover Sq.          | London      | WA1 1DP  | UK
-- 5 | Berglunds snabbköp                 | Juan | Berguvsvägen 8           | Luleå       | S-958 22 | Sweden


-- Notes:
-- Always use WHERE to limit which records are affected.
-- You can update one or multiple columns at once.