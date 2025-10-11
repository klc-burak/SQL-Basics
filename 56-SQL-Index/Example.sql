-- SQL CREATE INDEX Statement
-- Indexes are used to speed up data retrieval from tables.
-- They make queries faster but can slow down INSERT, UPDATE, or DELETE operations
-- since indexes must also be updated when the table changes.

-- 1. CREATE INDEX Syntax
-- Creates an index that allows duplicate values
CREATE INDEX index_name
ON table_name (column1, column2, ...);

-- 2. CREATE UNIQUE INDEX Syntax
-- Creates an index that does not allow duplicate values
CREATE UNIQUE INDEX index_name
ON table_name (column1, column2, ...);

-- 3. Example: Create an index on one column
CREATE INDEX idx_lastname
ON Persons (LastName);

-- 4. Example: Create an index on multiple columns
CREATE INDEX idx_pname
ON Persons (LastName, FirstName);

-- 5. DROP INDEX Statement (varies by database)

-- MS Access
DROP INDEX index_name
ON table_name;

-- SQL Server
DROP INDEX table_name.index_name;

-- DB2 / Oracle
DROP INDEX index_name;

-- MySQL
ALTER TABLE table_name
DROP INDEX index_name;