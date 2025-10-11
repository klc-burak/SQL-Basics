-- SQL UNIQUE Constraint

-- The UNIQUE constraint ensures that all values in a column are different.
-- Both UNIQUE and PRIMARY KEY guarantee uniqueness, but a table can have multiple UNIQUE constraints and only one PRIMARY KEY.

-- Example 1: UNIQUE on CREATE TABLE
-- SQL Server / Oracle / MS Access
CREATE TABLE Persons (
    ID int NOT NULL UNIQUE,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int
);

-- MySQL
CREATE TABLE Persons (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    UNIQUE (ID)
);

-- Example 2: Named UNIQUE constraint on multiple columns
CREATE TABLE Persons (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    CONSTRAINT UC_Person UNIQUE (ID, LastName)
);

-- Example 3: UNIQUE on ALTER TABLE
ALTER TABLE Persons
ADD UNIQUE (ID);

-- Example 4: Named UNIQUE constraint on ALTER TABLE
ALTER TABLE Persons
ADD CONSTRAINT UC_Person UNIQUE (ID, LastName);

-- Example 5: Drop a UNIQUE constraint
-- MySQL
ALTER TABLE Persons
DROP INDEX UC_Person;

-- SQL Server / Oracle / MS Access
ALTER TABLE Persons
DROP CONSTRAINT UC_Person;