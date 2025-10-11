-- SQL SELECT Statement Example
-- The SELECT statement is used to select data from a database.

-- Select specific columns from the Customers table
SELECT CustomerName, City
FROM Customers;

-- Explanation:
-- SELECT column1, column2, ... : specify which columns you want to retrieve
-- FROM table_name             : specify the table name
-- In this example, we select the "CustomerName" and "City" columns from "Customers"