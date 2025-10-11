-- SQL NOT NULL Constraint

-- The NOT NULL constraint ensures that a column cannot have NULL values.

-- Example 1: NOT NULL on CREATE TABLE
CREATE TABLE Persons (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255) NOT NULL,
    Age int
);

-- Example 2: NOT NULL on ALTER TABLE
-- SQL Server / MS Access
ALTER TABLE Persons
ALTER COLUMN Age int NOT NULL;

-- MySQL / Oracle (prior to 10G)
ALTER TABLE Persons
MODIFY COLUMN Age int NOT NULL;

-- Oracle 10G and later
ALTER TABLE Persons
MODIFY Age int NOT NULL;