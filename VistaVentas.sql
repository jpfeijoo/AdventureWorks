CREATE VIEW Ventas_PowerBI AS
SELECT     
	T1.SalesOrderID AS orderID, 
	T1.OrderQty AS Cantidad, 
	T1.ProductID, 
	T3.Name AS producto, 
	T1.UnitPrice AS precioUnitario, 
	T1.UnitPriceDiscount AS Descuento, 
	T1.LineTotal AS Total, 
	T2.Status, 
	T2.OrderDate AS Fecha, 
	T2.CustomerID, 
	T2.SalesPersonID, 
	T5.FirstName + ' ' + T5.LastName AS vendedor, 
	T4.Name AS Region, 
	T4.TerritoryID

FROM        
	Sales.SalesOrderDetail T1
INNER JOIN
	Sales.SalesOrderHeader T2 ON T1.SalesOrderID = T2.SalesOrderID 
INNER JOIN
	Production.Product T3 ON T1.ProductID = T3.ProductID 
INNER JOIN
	Sales.SalesTerritory T4 ON T2.TerritoryID = T4.TerritoryID 
                               AND T2.TerritoryID = T4.TerritoryID 
                               AND T2.TerritoryID = T4.TerritoryID 
LEFT OUTER JOIN
	Person.Person T5 ON T2.SalesPersonID = T5.BusinessEntityID