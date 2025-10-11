-- SQL Self Join

-- A self join is a regular join, but the table is joined with itself.
-- Table aliases are used to differentiate between the two instances of the same table.

-- Syntax:
-- SELECT column_name(s)
-- FROM table1 T1, table1 T2
-- WHERE condition;

-- Demo Database: Northwind
-- "Customers" table:
-- CustomerID | CustomerName                      | ContactName    | Address                       | City       | PostalCode | Country
--------------|-----------------------------------|----------------|-------------------------------|------------|------------|--------
-- 1          | Alfreds Futterkiste               | Maria Anders   | Obere Str. 57                 | Berlin     | 12209      | Germany
-- 2          | Ana Trujillo Emparedados y helados| Ana Trujillo   | Avda. de la Constitución 2222 | México D.F.| 05021      | Mexico
-- 3          | Antonio Moreno Taquería           | Antonio Moreno | Mataderos 2312                | México D.F.| 05023      | Mexico

-- Example: Match customers from the same city
SELECT A.CustomerName AS CustomerName1, B.CustomerName AS CustomerName2, A.City
FROM Customers A, Customers B
WHERE A.CustomerID <> B.CustomerID AND A.City = B.City
ORDER BY A.City;

-- Explanation:
-- 1. The Customers table is referenced twice, using aliases A and B.
-- 2. The condition A.CustomerID <> B.CustomerID avoids matching a customer with itself.
-- 3. A.City = B.City finds customers located in the same city.
-- 4. The result lists pairs of customers sharing the same city.