-- SQL DELETE Statement
-- The DELETE statement is used to delete existing records from a table.

-- WARNING:
-- If you omit the WHERE clause, ALL records in the table will be deleted!

-- Basic Syntax:
-- DELETE
-- FROM table_name
-- WHERE condition;

-- Demo Table: Customers
-- CustomerID  | CustomerName                       | ContactName        | Address                  | City         | PostalCode  | Country
-- ------------|------------------------------------|--------------------|--------------------------|--------------|-------------|--------
-- 1           | Alfreds Futterkiste                | Maria Anders       | Obere Str. 57            | Berlin       | 12209       | Germany
-- 2           | Ana Trujillo Emparedados y helados | Ana Trujillo       | Avda. de la Constitución | México D.F.  | 05021       | Mexico
-- 3           | Antonio Moreno Taquería            | Antonio Moreno     | Mataderos 2312           | México D.F.  | 05023       | Mexico
-- 4           | Around the Horn                    | Thomas Hardy       | 120 Hanover Sq.          | London       | WA1 1DP     | UK
-- 5           | Berglunds snabbköp                 | Christina Berglund | Berguvsvägen 8           | Luleå        | S-958 22    | Sweden


-- Example 1: Delete a single record
-- Delete the customer named 'Alfreds Futterkiste'
DELETE
FROM Customers
WHERE CustomerName = 'Alfreds Futterkiste';

-- After deletion:
-- CustomerID | CustomerName                       | ContactName        | City
-- 2          | Ana Trujillo Emparedados y helados | Ana Trujillo       | México D.F.
-- 3          | Antonio Moreno Taquería            | Antonio Moreno     | México D.F.
-- 4          | Around the Horn                    | Thomas Hardy       | London
-- 5          | Berglunds snabbköp                 | Christina Berglund | Luleå


-- Example 2: Delete multiple records
-- Delete all customers from Mexico
DELETE
FROM Customers
WHERE Country = 'Mexico';

-- After deletion:
-- CustomerID | CustomerName             | ContactName         | City
-- 4          | Around the Horn          | Thomas Hardy        | London
-- 5          | Berglunds snabbköp       | Christina Berglund  | Luleå


-- Example 3: Delete ALL records
-- This will remove every row from the table, but keep the table structure.
DELETE
FROM Customers;

-- After deletion:
-- Table "Customers" is now empty (no rows remain).
-- The table structure (columns, indexes) still exists.


-- Example 4: Delete the entire table structure
-- This completely removes the table (data + schema).
DROP TABLE Customers;


-- Notes:
-- - Use DELETE with a WHERE clause to remove specific records.
-- - Use DELETE FROM table_name to empty the table but keep its structure.
-- - Use DROP TABLE to permanently remove the entire table.