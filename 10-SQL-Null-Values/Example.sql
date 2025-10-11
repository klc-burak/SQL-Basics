-- SQL NULL Values
-- A NULL value represents a field with NO VALUE (unknown or missing).
-- NULL is NOT the same as 0, an empty string, or spaces.

-- Example setup: assume some customers have no Address
-- (In real databases, this might happen if the address is not provided.)

-- Example 1: Selecting all customers with a NULL Address
SELECT CustomerName, ContactName, Address
FROM Customers
WHERE Address IS NULL;

-- Example 2: Selecting all customers with a NON-NULL Address
SELECT CustomerName, ContactName, Address
FROM Customers
WHERE Address IS NOT NULL;

-- Example 3: Demonstrating that '=' cannot be used to check for NULL
-- This will NOT work properly:
-- SELECT *
-- FROM Customers
-- WHERE Address = NULL;

--  Always use IS NULL or IS NOT NULL instead.

-- Example 4: Insert some customers with and without Address values
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES
('Null Test One', 'Alice Brown', NULL, 'Oslo', '0155', 'Norway'),
('Null Test Two', 'Bob Smith', 'Main Street 5', 'London', 'SW1A 1AA', 'UK');

-- Notes:
-- NULL means “no data” or “unknown value”.
-- Use IS NULL to find missing data.
-- Use IS NOT NULL to find present (non-empty) data.
-- NULL cannot be compared with =, <, >, or <> operators.