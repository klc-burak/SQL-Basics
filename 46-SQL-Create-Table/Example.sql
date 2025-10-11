-- SQL CREATE TABLE Statement
-- The CREATE TABLE statement is used to create a new table in a database.

-- Syntax:
CREATE TABLE table_name (
    column1 datatype,
    column2 datatype,
    column3 datatype,
    ...
);

-- Explanation:
-- column_name: The name of each column in the table.
-- datatype: The type of data that the column can hold (e.g., INT, VARCHAR, DATE, etc.).

-- Example: Create a table named "Persons" with 5 columns
CREATE TABLE Persons (
    PersonID int,
    LastName varchar(255),
    FirstName varchar(255),
    Address varchar(255),
    City varchar(255)
);

-- Description:
-- PersonID → integer (stores numeric IDs)
-- LastName, FirstName, Address, City → variable-length text (up to 255 characters)

-- The "Persons" table is currently empty:
-- PersonID | LastName | FirstName | Address | City
-- -----------------------------------------------
-- (empty)

-- Tip:
-- You can insert records into this table using the SQL INSERT INTO statement.

-- Create Table Using Another Table
-- You can also create a new table as a copy of an existing one.

-- Syntax:
CREATE TABLE new_table_name AS
SELECT column1, column2, ...
FROM existing_table_name
WHERE ...;

-- Example: Create a table "TestTable" as a copy of selected columns from "Customers"
CREATE TABLE TestTable AS
SELECT CustomerName, ContactName
FROM Customers;

-- This creates a new table "TestTable" with data copied from "Customers".