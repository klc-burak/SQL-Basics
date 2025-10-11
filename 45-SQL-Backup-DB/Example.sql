-- SQL BACKUP DATABASE Statement
-- The BACKUP DATABASE statement is used in SQL Server to create a full backup of an existing database.

-- Syntax:
BACKUP DATABASE database_name
TO DISK = 'file_path';

-- Example (Full Backup):
BACKUP DATABASE testDB
TO DISK = 'D:\backups\testDB.bak';

-- Explanation:
-- This command creates a complete backup of the database "testDB"
-- and saves it as a file named "testDB.bak" on the D: drive.

-- Tip:
-- Always store backups on a different drive than the database files.
-- This ensures your backup remains safe in case of disk failure.


-- SQL BACKUP WITH DIFFERENTIAL Statement
-- A differential backup only saves the changes made since the last full backup.

-- Syntax:
BACKUP DATABASE database_name
TO DISK = 'file_path'
WITH DIFFERENTIAL;

-- Example (Differential Backup):
BACKUP DATABASE testDB
TO DISK = 'D:\backups\testDB.bak'
WITH DIFFERENTIAL;

-- Explanation:
-- This command creates a differential backup of the database "testDB",
-- backing up only the data that has changed since the last full backup.

-- Tip:
-- Differential backups are faster and smaller because they only store modified data.