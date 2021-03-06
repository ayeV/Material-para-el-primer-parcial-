/*INSERT INTO Products(ProductName,UnitPrice) VALUES ('ESET NOD 32', '56')
/*INSERT INTO Products VALUES ('TOMATE EN LATA','25,05')*/

SELECT ProductName,UnitPrice
FROM Products*/

--UPDATE Products SET
--ProductName = 'Chaito'
--WHERE ProductName = 'Chai'

--select * from Products

--DELETE FROM Products
--WHERE ProductName = 'ESET NOD 32'

--select * from Products

--select ProductName
--from Products
--order by ProductName desc
--select * from Products 

--select count (ProductName),UnitPrice
--from Products
--group by UnitPrice

--SELECT MAX (OrderDate)
--FROM Orders
--SELECT MIN (OrderDate)
--FROM Orders

--SELECT DISTINCT OrderDate FROM Orders

--SELECT pro.ProductName, cat.CategoryName
--FROM Products pro INNER JOIN Categories cat ON (pro.CategoryID = cat.CategoryID)

--Relacion entre productos, categoria y proveedores--
--SELECT pro.ProductName, cat.CategoryName, supp.CompanyName AS SupplierName
--FROM Products pro INNER JOIN Categories cat ON (pro.CategoryID = cat.CategoryID)
--				  INNER JOIN Suppliers supp ON (supp.SupplierID = pro.SupplierID)

--Productos, ventas, detalle de ventas y clientes--

--SELECT cus.ContactName, ord.CustomerID, details.Quantity, pro.ProductName,cat.CategoryName
--FROM Customers cus INNER JOIN Orders ord ON (cus.CustomerID = ord.CustomerID)
--				   INNER JOIN [Order Details] details ON (details.OrderID = ord.OrderID)
--				   INNER JOIN Products pro ON (pro.ProductID = details.ProductID)
--				   INNER JOIN Categories cat ON (pro.CategoryID = cat.CategoryID)
--select * from Products
--SELECT  * FROM Products LEFT JOIN Categories ON Products.CategoryID = Categories.CategoryID
--SELECT  * FROM Products RIGHT JOIN Categories ON Products.CategoryID = Categories.CategoryID

select pro.ProductName, sum(pro.UnitsInStock) AS Stock
from Products pro INNER JOIN Categories cat ON (pro.CategoryID = cat.CategoryID)
group by pro.ProductName
having sum(pro.UnitsInStock) >100

--select * from Products
--where ProductName IN ('Original Frankfurter grüne Soße')

select * from Products
where ProductName NOT IN ('Original Frankfurter grüne Soße')

SELECT * FROM Customers
WHERE City IN (SELECT City FROM Employees)