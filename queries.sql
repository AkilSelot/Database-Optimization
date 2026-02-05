-- queries.sql

-- Query 1: Select top 10 customers by total sales
SELECT CustomerID, SUM(TotalAmount) AS TotalSales
FROM Sales
GROUP BY CustomerID
ORDER BY TotalSales DESC
LIMIT 10;

-- Query 2: Find slow queries (example)
EXPLAIN SELECT * FROM Orders WHERE OrderDate > '2026-01-01';

-- Query 3: Optimize table by adding index
CREATE INDEX idx_order_date ON Orders(OrderDate);
