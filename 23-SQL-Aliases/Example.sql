-- SQL Aliases
-- Aliases are temporary names for columns or tables in SQL.
-- They make column names more readable and exist only for the duration of the query.
-- Created using the AS keyword (optional in most databases).

-- Example 1: Alias for a column
SELECT CustomerID AS ID
FROM Customers;

-- Example 2: AS keyword is optional
SELECT CustomerID ID
FROM Customers;

-- Syntax:
-- Column alias:
-- SELECT column_name AS alias_name FROM table_name;
-- Table alias:
-- SELECT column_name(s) FROM table_name AS alias_name;

-- Example 3: Multiple aliases for columns
SELECT CustomerID AS ID, CustomerName AS Customer
FROM Customers;

-- Example 4: Alias with spaces (use [] or "")
SELECT ProductName AS [My Great Products]
FROM Products;

-- or (depending on database)
SELECT ProductName AS "My Great Products"
FROM Products;

-- Example 5: Concatenate columns with alias
-- (SQL Server / PostgreSQL style)
SELECT CustomerName, Address + ', ' + PostalCode + ' ' + City + ', ' + Country AS Address
FROM Customers;

-- Example 6: MySQL version (uses CONCAT)
SELECT CustomerName, CONCAT(Address, ', ', PostalCode, ', ', City, ', ', Country) AS Address
FROM Customers;

-- Example 7: Oracle version (uses ||)
SELECT CustomerName, (Address || ', ' || PostalCode || ' ' || City || ', ' || Country) AS Address
FROM Customers;

-- Example 8: Alias for a table
SELECT * FROM Customers AS Persons;

-- Example 9: Table aliases for shorter queries (joins)
SELECT o.OrderID, o.OrderDate, c.CustomerName
FROM Customers AS c, Orders AS o
WHERE c.CustomerName = 'Around the Horn' AND c.CustomerID = o.CustomerID;

-- Example 10: Same query without aliases (longer)
SELECT Orders.OrderID, Orders.OrderDate, Customers.CustomerName
FROM Customers, Orders
WHERE Customers.CustomerName = 'Around the Horn' AND Customers.CustomerID = Orders.CustomerID;

-- Aliases are useful when:
-- - Using multiple tables
-- - Combining columns
-- - Column names are long or unclear
-- - Using functions in the query