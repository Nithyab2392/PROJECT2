use amazon;

# Join the Orders and Order Details tables to calculate total revenue per order.
SELECT o.OrderID,
       o.CustomerID,
       o.OrderDate,
       Max(od.Quantity * od.UnitPrice * (1 - od.Discount/100)) AS TotalRevenue
FROM Orders o
JOIN Order_Details od
  ON o.OrderID = od.OrderID
GROUP BY o.OrderID, o.CustomerID, o.OrderDate
ORDER BY TotalRevenue DESC;

# Identify customers who placed the most orders in a specific time period.

SELECT CustomerID,
       COUNT(OrderID) AS OrdersCount
FROM Orders
WHERE OrderDate BETWEEN '2025-01-01' AND '2025-01-31'   -- specify your time period
GROUP BY CustomerID
ORDER BY OrdersCount DESC;
# Find the supplier with the most products in stock.

SELECT s.SupplierID,
       s.SupplierName,
       max(p.Stockquantity) AS TotalStock
FROM Suppliers s
JOIN Products p
  ON s.SupplierID = p.SupplierID
GROUP BY s.SupplierID, s.SupplierName
ORDER BY TotalStock DESC
LIMIT 10;

SELECT SupplierID,
       sum(StockQuantity) AS TotalStock
FROM Products
GROUP BY SupplierID
ORDER BY TotalStock DESC
LIMIT 2;





