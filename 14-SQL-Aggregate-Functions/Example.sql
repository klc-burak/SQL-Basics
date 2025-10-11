-- SQL Aggregate Functions
-- An aggregate function performs a calculation on a set of values and returns a single value.
-- Commonly used with GROUP BY to summarize data.

-- Common SQL Aggregate Functions:
-- 1. MIN()  → returns the smallest value
-- 2. MAX()  → returns the largest value
-- 3. COUNT() → counts number of rows
-- 4. SUM() → returns total sum of a numeric column
-- 5. AVG() → returns the average value of a numeric column

-- Notes:
-- - GROUP BY allows aggregate functions to operate per category/group.
-- - Aggregate functions ignore NULL values (except COUNT(*)).
-- - Use aliases (AS) to label results clearly in output.
-- - You can combine aggregate functions with HAVING for conditional aggregation.