-- SQL AUTO INCREMENT FIELD

-- Auto-increment allows a unique number to be generated automatically when a new record is inserted into a table.
-- Typically used for primary keys.

-- MySQL Syntax
CREATE TABLE Persons (
    Personid int NOT NULL AUTO_INCREMENT,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    PRIMARY KEY (Personid)
);

-- AUTO_INCREMENT starts from 1 by default.
-- To change the starting point:
ALTER TABLE Persons AUTO_INCREMENT = 100;

-- Inserting a record (Personid auto-generated)
INSERT INTO Persons (FirstName, LastName)
VALUES ('Lars', 'Monsen');


-- SQL Server Syntax
CREATE TABLE Persons (
    Personid int IDENTITY(1,1) PRIMARY KEY,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int
);

-- IDENTITY(1,1) means start at 1 and increment by 1.
-- Example with custom start/increment: IDENTITY(10,5)

INSERT INTO Persons (FirstName, LastName)
VALUES ('Lars', 'Monsen');


-- MS Access Syntax
CREATE TABLE Persons (
    Personid AUTOINCREMENT PRIMARY KEY,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int
);

-- AUTOINCREMENT(10,5) would start at 10 and increment by 5.

INSERT INTO Persons (FirstName, LastName)
VALUES ('Lars', 'Monsen');


-- Oracle Syntax
-- Oracle does not support AUTO_INCREMENT directly.
-- Use SEQUENCE and NEXTVAL instead.

CREATE SEQUENCE seq_person
MINVALUE 1
START WITH 1
INCREMENT BY 1
CACHE 10;

-- Use sequence in INSERT statement
INSERT INTO Persons (Personid, FirstName, LastName)
VALUES (seq_person.nextval, 'Lars', 'Monsen');