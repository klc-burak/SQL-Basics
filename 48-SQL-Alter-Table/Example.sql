-- SQL ALTER TABLE Statement
-- The ALTER TABLE statement is used to add, delete, or modify columns in an existing table.
-- It can also be used to add or drop constraints such as PRIMARY KEY or FOREIGN KEY.


-- 1. ADD a New Column
-- Syntax:
ALTER TABLE table_name
ADD column_name datatype;

-- Example: Add a column named "Email" to the "Customers" table
ALTER TABLE Customers
ADD Email varchar(255);


-- 2. DROP an Existing Column
-- Syntax:
ALTER TABLE table_name
DROP COLUMN column_name;

-- Example: Delete the "Email" column from the "Customers" table
ALTER TABLE Customers
DROP COLUMN Email;


-- 3. RENAME a Column
-- General SQL Syntax:
ALTER TABLE table_name
RENAME COLUMN old_name TO new_name;

-- SQL Server Syntax:
EXEC sp_rename 'table_name.old_name', 'new_name', 'COLUMN';

-- Example (SQL Server): Rename "Address" to "StreetAddress" in "Persons"
EXEC sp_rename 'Persons.Address', 'StreetAddress', 'COLUMN';


-- 4. MODIFY Column Data Type
-- SQL Server / MS Access Syntax:
ALTER TABLE table_name
ALTER COLUMN column_name datatype;

-- MySQL / Oracle (before version 10G) Syntax:
ALTER TABLE table_name
MODIFY COLUMN column_name datatype;

-- Oracle 10G and later:
ALTER TABLE table_name
MODIFY column_name datatype;

-- Example: Change "DateOfBirth" column type to YEAR in "Persons"
ALTER TABLE Persons
ALTER COLUMN DateOfBirth year;


-- 5. Complete Example on a Table
-- Suppose we have the "Persons" table:
-- ID | LastName | FirstName | Address | City

-- Add a new column:
ALTER TABLE Persons
ADD DateOfBirth date;

-- Now the table becomes:
-- ID | LastName | FirstName | Address | City | DateOfBirth

-- Modify the data type of the new column:
ALTER TABLE Persons
ALTER COLUMN DateOfBirth year;

-- Drop the DateOfBirth column:
ALTER TABLE Persons
DROP COLUMN DateOfBirth;

-- The table is back to:
-- ID | LastName | FirstName | Address | City