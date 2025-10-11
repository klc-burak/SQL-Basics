-- SQL FOREIGN KEY Constraint

-- A FOREIGN KEY links a column (or set of columns) in one table (child table)
-- to the PRIMARY KEY in another table (parent table).
-- It prevents invalid data that does not exist in the parent table.

-- Example 1: FOREIGN KEY on CREATE TABLE
-- MySQL
CREATE TABLE Orders (
    OrderID int NOT NULL,
    OrderNumber int NOT NULL,
    PersonID int,
    PRIMARY KEY (OrderID),
    FOREIGN KEY (PersonID) REFERENCES Persons(PersonID)
);

-- SQL Server / Oracle / MS Access
CREATE TABLE Orders (
    OrderID int NOT NULL PRIMARY KEY,
    OrderNumber int NOT NULL,
    PersonID int FOREIGN KEY REFERENCES Persons(PersonID)
);

-- Example 2: Named FOREIGN KEY constraint
CREATE TABLE Orders (
    OrderID int NOT NULL,
    OrderNumber int NOT NULL,
    PersonID int,
    PRIMARY KEY (OrderID),
    CONSTRAINT FK_PersonOrder FOREIGN KEY (PersonID) REFERENCES Persons(PersonID)
);

-- Example 3: FOREIGN KEY on ALTER TABLE
ALTER TABLE Orders
ADD FOREIGN KEY (PersonID) REFERENCES Persons(PersonID);

-- Example 4: Named FOREIGN KEY on ALTER TABLE
ALTER TABLE Orders
ADD CONSTRAINT FK_PersonOrder FOREIGN KEY (PersonID) REFERENCES Persons(PersonID);

-- Example 5: Drop a FOREIGN KEY constraint
-- MySQL
ALTER TABLE Orders
DROP FOREIGN KEY FK_PersonOrder;

-- SQL Server / Oracle / MS Access
ALTER TABLE Orders
DROP CONSTRAINT FK_PersonOrder;