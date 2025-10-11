-- SQL DATES

-- Working with dates requires matching the date format of the value you insert
-- with the format used by your database column.


-- SQL Date Data Types

-- MySQL Date Types:
-- DATE        → YYYY-MM-DD
-- DATETIME    → YYYY-MM-DD HH:MI:SS
-- TIMESTAMP   → YYYY-MM-DD HH:MI:SS
-- YEAR        → YYYY or YY

-- SQL Server Date Types:
-- DATE         → YYYY-MM-DD
-- DATETIME     → YYYY-MM-DD HH:MI:SS
-- SMALLDATETIME→ YYYY-MM-DD HH:MI:SS
-- TIMESTAMP    → unique number (not a true date type)

-- The data type is chosen when creating a table.


-- Example Table

-- Orders Table:
-- OrderId | ProductName           | OrderDate
-- 1       | Geitost               | 2008-11-11
-- 2       | Camembert Pierrot     | 2008-11-09
-- 3       | Mozzarella di Giovanni| 2008-11-11
-- 4       | Mascarpone Fabioli    | 2008-10-29


-- Selecting Records by Date
SELECT * FROM Orders
WHERE OrderDate = '2008-11-11';

-- Result:
-- OrderId | ProductName           | OrderDate
-- 1       | Geitost               | 2008-11-11
-- 3       | Mozzarella di Giovanni| 2008-11-11


-- When Time Components Are Included

-- If OrderDate includes time values, comparison becomes more complex.

-- Example Table:
-- OrderId | ProductName           | OrderDate
-- 1       | Geitost               | 2008-11-11 13:23:44
-- 2       | Camembert Pierrot     | 2008-11-09 15:45:21
-- 3       | Mozzarella di Giovanni| 2008-11-11 11:12:01
-- 4       | Mascarpone Fabioli    | 2008-10-29 14:56:59

-- The following query will return NO RESULTS:
SELECT * FROM Orders
WHERE OrderDate = '2008-11-11';

-- Because the condition does not match rows with a time portion.

-- Tip:
-- Avoid using time components in your dates unless necessary.
-- It keeps queries simpler and comparisons more accurate.