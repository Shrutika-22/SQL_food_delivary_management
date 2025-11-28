-- 1. All orders with customer names
SELECT o.OrderID, c.Name, o.OrderDate, o.Status  
FROM Orders o  
JOIN Customer c ON o.CustomerID = c.CustomerID;

-- 2. Menu items from a restaurant
SELECT Name, Price  
FROM MenuItem  
WHERE RestaurantID = 1;

-- 3. Total order amount
SELECT o.OrderID, SUM(m.Price * oi.Quantity) AS TotalAmount  
FROM Orders o
JOIN OrderItem oi ON o.OrderID = oi.OrderID
JOIN MenuItem m ON oi.ItemID = m.ItemID
GROUP BY o.OrderID;

-- 4. Orders delivered by a partner
SELECT d.DeliveryID, dp.Name, o.OrderID  
FROM Delivery d
JOIN DeliveryPartner dp ON d.PartnerID = dp.PartnerID
JOIN Orders o ON d.OrderID = o.OrderID;

-- 5. Customers with more than one order
SELECT CustomerID, COUNT(*) AS TotalOrders  
FROM Orders  
GROUP BY CustomerID  
HAVING COUNT(*) > 1;
