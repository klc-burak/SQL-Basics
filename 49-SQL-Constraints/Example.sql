-- SQL Constraints Overview

-- Constraints are rules applied to table columns to ensure data accuracy and integrity.
-- They can be defined when creating a table (CREATE TABLE) or added later (ALTER TABLE).

-- Common Types of SQL Constraints:
-- 1. NOT NULL      - Ensures a column cannot have NULL values.
-- 2. UNIQUE        - Ensures all values in a column are different.
-- 3. PRIMARY KEY   - A combination of NOT NULL and UNIQUE. Uniquely identifies each record.
-- 4. FOREIGN KEY   - Ensures referential integrity between two tables.
-- 5. CHECK         - Ensures the value in a column meets a specific condition.
-- 6. DEFAULT       - Assigns a default value if none is provided.
-- 7. CREATE INDEX  - Improves data retrieval speed (not a constraint, but often listed together).

CREATE TABLE table_name (
    column1 datatype constraint,
    column2 datatype constraint,
    column3 datatype constraint,
    ....
);