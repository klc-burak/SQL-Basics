-- SQL CREATE VIEW Statement

-- A VIEW is a virtual table based on the result set of an SQL query.
-- It behaves like a real table with rows and columns,
-- but the data comes from one or more existing tables.

-- You can use SQL statements and functions within a view
-- to present data as if it were from a single table.


-- CREATE VIEW Syntax
CREATE VIEW view_name AS
SELECT column1, column2, ...
FROM table_name
WHERE condition;

-- Note: A view always shows the most up-to-date data,
-- because it is recreated by the database engine each time it is queried.


-- Example 1: Create a View
-- The following example creates a view showing all customers from Brazil:
CREATE VIEW [Brazil Customers] AS
SELECT CustomerName, ContactName
FROM Customers
WHERE Country = 'Brazil';

-- Query the view like a regular table:
SELECT * FROM [Brazil Customers];


-- Example 2: Create a View Using a Subquery
-- The following view selects all products with a price higher than the average price:
CREATE VIEW [Products Above Average Price] AS
SELECT ProductName, Price
FROM Products
WHERE Price > (SELECT AVG(Price) FROM Products);

-- Query the view:
SELECT * FROM [Products Above Average Price];


-- Updating a View
-- You can modify an existing view using CREATE OR REPLACE VIEW:
CREATE OR REPLACE VIEW [Brazil Customers] AS
SELECT CustomerName, ContactName, City
FROM Customers
WHERE Country = 'Brazil';


-- Dropping a View
-- To delete a view, use the DROP VIEW statement:
DROP VIEW [Brazil Customers];