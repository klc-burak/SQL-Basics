-- SQL DROP TABLE Statement
-- The DROP TABLE statement is used to permanently remove an existing table from the database.

-- Syntax:
DROP TABLE table_name;

-- Warning:
-- Dropping a table deletes all its data, structure, and relationships.
-- This action cannot be undone.

-- Example: Delete the table named "Shippers"
DROP TABLE Shippers;

-- SQL TRUNCATE TABLE Statement
-- The TRUNCATE TABLE statement deletes all the data inside a table
-- but keeps the table structure for future use.

-- Syntax:
TRUNCATE TABLE table_name;

-- Example: Remove all data from the "Orders" table but keep its structure
TRUNCATE TABLE Orders;

-- Difference between DROP and TRUNCATE:
-- DROP TABLE → removes both data and structure (the table is gone).
-- TRUNCATE TABLE → removes only data (the table remains empty but usable).