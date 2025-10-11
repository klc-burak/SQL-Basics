-- SQL Wildcard Characters
-- A wildcard character is used to substitute one or more characters in a string.
-- Wildcards are used together with the LIKE operator in WHERE clauses.

-- Common Wildcards:
-- %  → Represents zero or more characters
-- _  → Represents a single character
-- [] → Represents any single character within the brackets  (*Not supported in MySQL/PostgreSQL)
-- ^  → Represents any character NOT in the brackets         (*Not supported in MySQL/PostgreSQL)
-- -  → Represents a range of characters inside brackets     (*Not supported in MySQL/PostgreSQL)
-- {} → Represents escaped characters (Oracle only)

-- Demo Table: Customers
-- CustomerID | CustomerName                       | ContactName        | Address                       | City         | PostalCode  | Country
-- -----------|------------------------------------|--------------------|-------------------------------|--------------|-------------|--------
-- 1          | Alfreds Futterkiste                | Maria Anders       | Obere Str. 57                 | Berlin       | 12209       | Germany
-- 2          | Ana Trujillo Emparedados y helados | Ana Trujillo       | Avda. de la Constitución 2222 | México D.F.  | 05021       | Mexico
-- 3          | Antonio Moreno Taquería            | Antonio Moreno     | Mataderos 2312                | México D.F.  | 05023       | Mexico
-- 4          | Around the Horn                    | Thomas Hardy       | 120 Hanover Sq.               | London       | WA1 1DP     | UK
-- 5          | Berglunds snabbköp                 | Christina Berglund | Berguvsvägen 8                | Luleå        | S-958 22    | Sweden


-- Using the % Wildcard
-- % represents any number of characters (including zero)
-- Example 1: Names ending with 'es'
SELECT *
FROM Customers
WHERE CustomerName LIKE '%es';

-- Example 2: Names containing 'mer'
SELECT *
FROM Customers
WHERE CustomerName LIKE '%mer%';


-- Using the _ Wildcard
-- _ represents exactly one single character
-- Example 1: City that has any first character followed by 'ondon' (e.g. London)
SELECT *
FROM Customers
WHERE City LIKE '_ondon';

-- Example 2: City starting with 'L', followed by any 3 characters, ending with 'on'
SELECT *
FROM Customers
WHERE City LIKE 'L___on';


-- Using the [] Wildcard
-- [] matches any one of the characters inside the brackets
-- (Supported in SQL Server / MS Access, not in MySQL or PostgreSQL)
-- Example: Names starting with 'b', 's', or 'p'
SELECT *
FROM Customers
WHERE CustomerName LIKE '[bsp]%';


-- Using the - Wildcard (Range)
-- - defines a character range inside []
-- Example: Names starting with any letter between a-f
SELECT *
FROM Customers
WHERE CustomerName LIKE '[a-f]%';


-- Combine Wildcards
-- Example 1: Names starting with 'a' and at least 3 characters long
SELECT *
FROM Customers
WHERE CustomerName LIKE 'a__%';

-- Example 2: Names having 'r' in the second position
SELECT *
FROM Customers
WHERE CustomerName LIKE '_r%';


-- Without Wildcards
-- If no wildcard is specified, only exact matches are returned.
SELECT *
FROM Customers
WHERE Country LIKE 'Spain';


-- Microsoft Access Wildcards
-- Access uses different wildcard characters:

-- Symbol | Description                                        | Example
-- *      | Zero or more characters                            | bl* → bl, black, blue, blob
-- ?      | Single character                                   | h?t → hot, hat, hit
-- []     | Any single character in brackets                   | h[oa]t → hot, hat
-- !      | Any character NOT in brackets                      | h[!oa]t → hit
-- -      | Range of characters                                | c[a-b]t → cat, cbt
-- #      | Any single numeric character                       | 2#5 → 205, 215, 225, ...
