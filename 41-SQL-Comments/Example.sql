-- SQL Comments
-- Comments are used to explain SQL statements or prevent execution.

-- Single-Line Comments
-- Single-line comments start with --

-- Example 1: Explanation
-- Select all customers
SELECT *
FROM Customers;

-- Example 2: Ignore part of a line
SELECT *
FROM Customers -- WHERE City='Berlin';

-- Example 3: Ignore an entire statement
-- SELECT * FROM Customers;
SELECT *
FROM Products;

-- Multi-Line Comments
-- Multi-line comments start with /* and end with */

-- Example 4: Explanation across multiple lines
/* Select all the columns
   of all the records
   in the Customers table: */
SELECT * FROM Customers;

-- Example 5: Ignore multiple statements
/*
SELECT *
FROM Customers;
SELECT *
FROM Products;
SELECT *
FROM Orders;
SELECT *
FROM Categories;
*/
SELECT *
FROM Suppliers;

-- Example 6: Ignore part of a line
SELECT CustomerName, /*City,*/ Country
FROM Customers;

-- Example 7: Ignore part of a complex condition
SELECT *
FROM Customers
WHERE (CustomerName LIKE 'L%' OR CustomerName LIKE 'R%' /* OR CustomerName LIKE 'S%' OR CustomerName LIKE 'T%' */ OR CustomerName LIKE 'W%')
AND Country='USA'
ORDER BY CustomerName;