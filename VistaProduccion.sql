CREATE VIEW Produccion_PowerBI as
Select
T1.WorkOrderID,
T1.StartDate as FechaInicio,
T1.EndDate as FechaFin,
T1.DueDate as FechaVencimiento,
T4.LocationID,
T4.Name as Location,
T1.ProductID,
T2.Name as producto,
T5.ProductModelID,
T5.Name as ProductModel,
T1.OrderQty as cantidad,
T1.StockedQty as almacenado,
T2.StandardCost as CostoStandard,
T2.ListPrice as precioLista
FROM Production.WorkOrder T1
INNER JOIN Production.Product T2 on T1.ProductID = T2.ProductID
INNER JOIN Production.WorkOrderRouting T3 on T1.WorkOrderID = T3.WorkOrderID
INNER JOIN Production.Location T4 on T3.LocationID = T4.LocationID
INNER JOIN Production.ProductModel T5 on T2.ProductModelID = T5.ProductModelID