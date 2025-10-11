-- SQL CHECK Constraint

-- A CHECK constraint limits the range or condition of values that can be inserted into a column.

-- Example 1: CHECK on CREATE TABLE
-- MySQL
CREATE TABLE Persons (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    CHECK (Age >= 18)
);

-- SQL Server / Oracle / MS Access
CREATE TABLE Persons (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int CHECK (Age >= 18)
);

-- Example 2: Named CHECK constraint and multiple columns
CREATE TABLE Persons (
    ID int NOT NULL,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    City varchar(255),
    CONSTRAINT CHK_Person CHECK (Age >= 18 AND City='Sandnes')
);

-- Example 3: CHECK on ALTER TABLE
ALTER TABLE Persons
ADD CHECK (Age >= 18);

-- Example 4: Named CHECK on ALTER TABLE with multiple columns
ALTER TABLE Persons
ADD CONSTRAINT CHK_PersonAge CHECK (Age >= 18 AND City='Sandnes');

-- Example 5: Drop a CHECK constraint
-- SQL Server / Oracle / MS Access
ALTER TABLE Persons
DROP CONSTRAINT CHK_PersonAge;

-- MySQL
ALTER TABLE Persons
DROP CHECK CHK_PersonAge;