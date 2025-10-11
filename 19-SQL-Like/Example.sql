-- SQL LIKE Operator
-- The LIKE operator is used in a WHERE clause to search for a specified pattern in a column.

-- Wildcards:
-- %  → represents zero, one, or multiple characters
-- _  → represents a single character

-- Demo Table: Customers
-- CustomerID | CustomerName                       | ContactName        | Address                       | City         | PostalCode  | Country
-- -----------|------------------------------------|--------------------|-------------------------------|--------------|-------------|
-- 1          | Alfreds Futterkiste                | Maria Anders       | Obere Str. 57                 | Berlin       | 12209       | Germany
-- 2          | Ana Trujillo Emparedados y helados | Ana Trujillo       | Avda. de la Constitución 2222 | México D.F.  | 05021       | Mexico
-- 3          | Antonio Moreno Taquería            | Antonio Moreno     | Mataderos 2312                | México D.F.  | 05023       | Mexico
-- 4          | Around the Horn                    | Thomas Hardy       | 120 Hanover Sq.               | London       | WA1 1DP     | UK
-- 5          | Berglunds snabbköp                 | Christina Berglund | Berguvsvägen 8                | Luleå        | S-958 22    | Sweden


-- Example 1: Starts with "a"
SELECT *
FROM Customers
WHERE CustomerName LIKE 'a%';

-- Example 2: The "_" wildcard - a single character
-- City starts with 'L', then one character, then 'nd', then two more characters
SELECT *
FROM Customers
WHERE City LIKE 'L_nd__';

-- Example 3: The "%" wildcard - any number of characters
-- Cities that contain the letter 'L'
SELECT *
FROM Customers
WHERE City LIKE '%L%';

-- Example 4: Starts With
-- Customers that start with 'La'
SELECT *
FROM Customers
WHERE CustomerName LIKE 'La%';

-- Example 5: Multiple conditions using OR
-- Customers that start with 'a' or 'b'
SELECT *
FROM Customers
WHERE CustomerName LIKE 'a%' OR CustomerName LIKE 'b%';

-- Example 6: Ends With
-- Customers that end with 'a'
SELECT *
FROM Customers
WHERE CustomerName LIKE '%a';

-- Example 7: Starts with 'b' AND ends with 's'
SELECT *
FROM Customers
WHERE CustomerName LIKE 'b%s';

-- Example 8: Contains
-- Customers whose name contains 'or'
SELECT *
FROM Customers
WHERE CustomerName LIKE '%or%';

-- Example 9: Combine wildcards
-- Customers that start with 'a' and have at least 3 characters
SELECT *
FROM Customers
WHERE CustomerName LIKE 'a__%';

-- Example 10: 'r' in the second position
SELECT *
FROM Customers
WHERE CustomerName LIKE '_r%';

-- Example 11: Exact match (no wildcards)
-- Customers from Spain
SELECT *
FROM Customers
WHERE Country LIKE 'Spain';

-- Tips:
-- - LIKE is case-insensitive in most SQL implementations (depends on collation).
-- - Use % for flexible matching; use _ for fixed-length patterns.
-- - Combine LIKE with AND / OR to create complex pattern filters.