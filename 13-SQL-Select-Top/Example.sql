-- SQL SELECT TOP Clause
-- The SELECT TOP clause is used to specify the number of records to return.
-- It helps improve performance by limiting the amount of data retrieved from large tables.

-- SQL Server / MS Access Syntax:
-- SELECT TOP number|percent column_name(s)
-- FROM table_name
-- WHERE condition;

-- MySQL Syntax:
-- SELECT column_name(s)
-- FROM table_name
-- WHERE condition
-- LIMIT number;

-- Oracle 12+ Syntax:
-- SELECT column_name(s)
-- FROM table_name
-- ORDER BY column_name(s)
-- FETCH FIRST number ROWS ONLY;

-- Older Oracle Syntax:
-- SELECT column_name(s)
-- FROM table_name
-- WHERE ROWNUM <= number;

-- Demo Table: Customers
-- CustomerID  | CustomerName                       | ContactName        | Address                  | City         | PostalCode  | Country
-- ------------|------------------------------------|--------------------|--------------------------|--------------|-------------|--------
-- 1           | Alfreds Futterkiste                | Maria Anders       | Obere Str. 57            | Berlin       | 12209       | Germany
-- 2           | Ana Trujillo Emparedados y helados | Ana Trujillo       | Avda. de la Constitución | México D.F.  | 05021       | Mexico
-- 3           | Antonio Moreno Taquería            | Antonio Moreno     | Mataderos 2312           | México D.F.  | 05023       | Mexico
-- 4           | Around the Horn                    | Thomas Hardy       | 120 Hanover Sq.          | London       | WA1 1DP     | UK
-- 5           | Berglunds snabbköp                 | Christina Berglund | Berguvsvägen 8           | Luleå        | S-958 22    | Sweden


-- Example 1: SQL Server / MS Access
-- Return the first 3 records
SELECT TOP 3 *
FROM Customers;

-- Example 2: MySQL equivalent
SELECT *
FROM Customers
LIMIT 3;

-- Example 3: Oracle 12+ equivalent
SELECT *
FROM Customers
FETCH FIRST 3 ROWS ONLY;

-- Example 4: Older Oracle Syntax (no ORDER BY)
SELECT *
FROM Customers
WHERE ROWNUM <= 3;

-- Example 5: SELECT TOP PERCENT (SQL Server)
-- Return the first 50% of rows
SELECT TOP 50 PERCENT *
FROM Customers;

-- Example 6: Oracle equivalent using percentage
SELECT *
FROM Customers
FETCH FIRST 50 PERCENT ROWS ONLY;

-- Example 7: Add a WHERE condition
-- Select the first 3 customers from Germany (SQL Server)
SELECT TOP 3 *
FROM Customers
WHERE Country = 'Germany';

-- MySQL equivalent
SELECT *
FROM Customers
WHERE Country = 'Germany'
LIMIT 3;

-- Oracle equivalent
SELECT *
FROM Customers
WHERE Country = 'Germany'
FETCH FIRST 3 ROWS ONLY;

-- Example 8: Combine with ORDER BY
-- Sort reverse alphabetically by CustomerName, return the first 3 (SQL Server)
SELECT TOP 3 *
FROM Customers
ORDER BY CustomerName DESC;

-- MySQL equivalent
SELECT *
FROM Customers
ORDER BY CustomerName DESC
LIMIT 3;

-- Oracle equivalent
SELECT *
FROM Customers
ORDER BY CustomerName DESC
FETCH FIRST 3 ROWS ONLY;

-- Notes:
-- - SELECT TOP is specific to SQL Server and MS Access.
-- - MySQL uses LIMIT.
-- - Oracle 12c and above uses FETCH FIRST n ROWS ONLY.
-- - Always use ORDER BY for predictable results when limiting rows.
-- - FETCH FIRST and LIMIT are more flexible for pagination.