USE northwind;

-- 1. Create a single query to list the product id, product name, unit price and category name of all products. Order by category name and within that, by product name.
SELECT p.ProductID, p.ProductName, p.UnitPrice, c.CategoryName
FROM products as p
JOIN categories as c
ON p.CategoryID = c.CategoryID
Order By CategoryName, ProductName;

-- 2. Create a single query to list the product id, product name, unit price and supplier name of all products that cost more than $75. Order by product name.
SELECT p.ProductID, p.ProductName, p.UnitPrice, s.CompanyName
FROM products as p
JOIN suppliers as s
ON p.SupplierID = s.SupplierID
WHERE p.UnitPrice > 75
ORDER BY p.ProductName;

-- 3. Create a single query to list the product id, product name, unit price, category name, and supplier name of every product. Order by product name.
SELECT p.ProductID, p.ProductName, P.UnitPrice, c.CategoryName, s.CompanyName
FROM products AS p
JOIN categories AS c
ON p.CategoryID = c.CategoryID
JOIN suppliers AS s
ON p.SupplierID = s.SupplierID
ORDER BY p.ProductName;

-- 4. Create a single query to list the order id, ship name, ship address, and shipping company name of every order that shipped to Germany. Assign the shipping company name the alias ‘Shipper.’ Order by the name of the shipper, then the name of who it shipped to.
SELECT o.OrderID, o.ShipName, o.ShipAddress, s.CompanyName AS Shipper
FROM orders AS o
JOIN shippers AS s
ON o.ShipVia = s.ShipperID
WHERE o.ShipCountry = 'Germany'
ORDER BY Shipper, o.ShipName;

-- 5. Start from the same query as above (#4), but omit OrderID and add logic to group by ship name, with a count of how many orders were shipped for that ship name.
SELECT o.ShipName, s.CompanyName AS Shipper, Count(*) AS NumberOfOrders
FROM orders AS o
JOIN shippers AS s
ON o.ShipVia = s.ShipperID
WHERE o.ShipCountry = 'Germany'
GROUP BY o.ShipName, s.CompanyName
ORDER BY Shipper, o.ShipName;

-- 6. Create a single query to list the order id, order date, ship name, ship address of all orders that included Sasquatch Ale
SELECT o.OrderID, o.OrderDate, o.ShipName, o.ShipAddress
FROM orders AS o
JOIN `order details` AS od
ON o.OrderID = od.OrderID
JOIN products AS p
ON od.ProductID = p.ProductID
WHERE p.ProductName = 'Sasquatch Ale';