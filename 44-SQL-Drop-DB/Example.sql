-- SQL DROP DATABASE Statement
-- The DROP DATABASE statement is used to delete an existing SQL database.

-- Syntax:
DROP DATABASE database_name;

-- Example:
DROP DATABASE testDB;

-- Explanation:
-- This command permanently deletes the database named "testDB"
-- and all of its data.

-- Warning:
-- Be cautious when using this command.
-- Dropping a database will remove all data and cannot be undone.

-- Tip:
-- Ensure you have administrative privileges before dropping a database.
-- To verify that the database has been deleted, list all databases:
SHOW DATABASES;