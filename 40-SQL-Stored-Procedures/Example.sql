-- What is a Stored Procedure?
-- A stored procedure is a saved SQL code block that can be executed repeatedly.
-- Instead of rewriting the same query multiple times, you can store it and run it using a simple command.
-- Stored procedures can also accept parameters, allowing dynamic queries.

-- Syntax
CREATE PROCEDURE procedure_name
AS
sql_statement
GO;

-- Execute a Stored Procedure
EXEC procedure_name;

-- Example 1: Basic Stored Procedure
CREATE PROCEDURE SelectAllCustomers
AS
SELECT *
FROM Customers
GO;

-- Execute
EXEC SelectAllCustomers;

-- Example 2: Stored Procedure with One Parameter
CREATE PROCEDURE SelectAllCustomers @City nvarchar(30)
AS
SELECT *
FROM Customers
WHERE City = @City
GO;

-- Execute
EXEC SelectAllCustomers @City = 'London';

-- Example 3: Stored Procedure with Multiple Parameters
CREATE PROCEDURE SelectAllCustomers @City nvarchar(30), @PostalCode nvarchar(10)
AS
SELECT *
FROM Customers
WHERE City = @City AND PostalCode = @PostalCode
GO;

-- Execute
EXEC SelectAllCustomers @City = 'London', @PostalCode = 'WA1 1DP';