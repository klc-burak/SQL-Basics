-- SQL SUM() Function
-- The SUM() function returns the total sum of a numeric column.

-- Demo Table: OrderDetails
-- OrderDetailID | OrderID | ProductID | Quantity
-- --------------|---------|-----------|--------
-- 1             | 10248   | 11        | 12
-- 2             | 10248   | 42        | 10
-- 3             | 10248   | 72        | 5
-- 4             | 10249   | 14        | 9
-- 5             | 10249   | 51        | 40


-- Example 1: Sum of all Quantity fields
SELECT SUM(Quantity) AS TotalQuantity
FROM OrderDetails;

-- Example 2: Sum with a WHERE clause - Quantity for ProductID 11
SELECT SUM(Quantity) AS TotalQuantity_Product11
FROM OrderDetails
WHERE ProductID = 11;

-- Example 3: Use SUM() with GROUP BY - Total Quantity per OrderID
SELECT OrderID, SUM(Quantity) AS [Total Quantity]
FROM OrderDetails
GROUP BY OrderID;

-- Example 4: SUM() with an expression - Assuming each product costs $10
SELECT SUM(Quantity * 10) AS TotalEarnings
FROM OrderDetails;

-- Example 5: SUM() with a JOIN - Actual total amount using Products table
-- Demo Table: Products (ProductID, ProductName, Price)
-- Join OrderDetails with Products to calculate actual total amount
SELECT SUM(Price * Quantity) AS TotalAmount
FROM OrderDetails
LEFT JOIN Products ON OrderDetails.ProductID = Products.ProductID;

-- Notes:
-- - SUM() only works with numeric columns.
-- - Use AS to give a descriptive name to the resulting column.
-- - Combine with WHERE to filter rows before summing.
-- - Combine with GROUP BY to calculate sums per group.
-- - Expressions inside SUM() are allowed, like Quantity * Price.