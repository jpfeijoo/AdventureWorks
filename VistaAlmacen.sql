CREATE VIEW Inevntario_PowerBI as
SELECT 
T1.ModifiedDate as FcehaEntrada,
T1.ProductID,
T2.Name as producto,
T4.ProductModelID,
T4.Name as ProductLine,
T3.LocationID,
T3.Name as location,
T1.Quantity
FROM Production.ProductInventory T1
join Production.Product T2 on T1.ProductID = T2.ProductID
join Production.Location T3 on T1.LocationID = T3.LocationID
join Production.ProductModel T4 on T2.ProductModelID = T4.ProductModelID