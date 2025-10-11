-- SQL PRIMARY KEY Constraint

-- A PRIMARY KEY uniquely identifies each row in a table.
-- A table can have only one PRIMARY KEY, but it can consist of multiple columns.

-- Example 1: PRIMARY KEY on CREATE TABLE
-- MySQL
CREATE TABLE Persons (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    PRIMARY KEY (ID)
);

-- SQL Server / Oracle / MS Access
CREATE TABLE Persons (
    ID int NOT NULL PRIMARY KEY,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int
);

-- Example 2: Named PRIMARY KEY on multiple columns
CREATE TABLE Persons (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    CONSTRAINT PK_Person PRIMARY KEY (ID, LastName)
);

-- Example 3: PRIMARY KEY on ALTER TABLE
ALTER TABLE Persons
ADD PRIMARY KEY (ID);

-- Example 4: Named PRIMARY KEY on multiple columns using ALTER TABLE
ALTER TABLE Persons
ADD CONSTRAINT PK_Person PRIMARY KEY (ID, LastName);

-- Example 5: Drop a PRIMARY KEY constraint
-- MySQL
ALTER TABLE Persons
DROP PRIMARY KEY;

-- SQL Server / Oracle / MS Access
ALTER TABLE Persons
DROP CONSTRAINT PK_Person;