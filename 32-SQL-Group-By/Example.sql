-- SQL GROUP BY Statement

-- The GROUP BY statement groups rows that have the same values into summary rows.
-- Often used with aggregate functions: COUNT(), SUM(), AVG(), MIN(), MAX().

-- Syntax:
-- SELECT column_name(s)
-- FROM table_name
-- WHERE condition
-- GROUP BY column_name(s)
-- ORDER BY column_name(s);

-- Example 1: Count the number of customers in each country
SELECT COUNT(CustomerID) AS NumberOfCustomers, Country
FROM Customers
GROUP BY Country;

-- Example 2: Count the number of customers in each country, sorted descending
SELECT COUNT(CustomerID) AS NumberOfCustomers, Country
FROM Customers
GROUP BY Country
ORDER BY COUNT(CustomerID) DESC;

-- Example 3: Count the number of orders sent by each shipper
SELECT Shippers.ShipperName, COUNT(Orders.OrderID) AS NumberOfOrders
FROM Orders
LEFT JOIN Shippers ON Orders.ShipperID = Shippers.ShipperID
GROUP BY Shippers.ShipperName;