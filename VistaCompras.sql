ALTER VIEW Compras_PowerBI AS
SELECT 
T1.PurchaseOrderID as OrdenID,
T2.OrderDate as FechaOrden,
T2.ShipDate as FechaEnvio,
T1.DueDate as FechaVencimiento,
T1.ProductID,
T3.Name as Descripcion,
T1.OrderQty as CantidadPedida,
T1.ReceivedQty as CantidadRecibida,
T1.RejectedQty as CantidadDevuelta,
T1.UnitPrice as PrecioUnitario,
T1.LineTotal as MontoTotal,
T2.VendorID as ProveedorID,
T5.Name as Proveedor,
T4.AverageLeadTime
FROM Purchasing.PurchaseOrderDetail T1
INNER JOIN Purchasing.PurchaseOrderHeader T2 on T1.PurchaseOrderID = T2.PurchaseOrderID
INNER JOIN Production.Product T3 on T1.ProductID = T3.ProductID
INNER JOIN Purchasing.ProductVendor T4 on T3.ProductID = T4.ProductID
INNER JOIN Purchasing.Vendor T5 on T2.VendorID = T5.BusinessEntityID;
go


SELECT 
a.PurchaseOrderID as OrdenID,
b.OrderDate as FechaOrden,
b.ShipDate as FechaEnvio,
a.DueDate as FechaVencimiento,
a.ProductID,
d.Name as Descripcion,
a.OrderQty as CantidadPedida,
a.ReceivedQty as CantidadRecibida,
a.RejectedQty as CantidadDevuelta,
a.UnitPrice as PrecioUnitario,
a.LineTotal as MontoTotal,
b.VendorID as ProveedorID,
e.Name as Proveedor,
c.AverageLeadTime
FROM Purchasing.PurchaseOrderDetail a
JOIN Purchasing.PurchaseOrderHeader b on a.PurchaseOrderID = b.PurchaseOrderID
JOIN Purchasing.ProductVendor c on a.ProductID = c.ProductID
JOIN Production.Product d on c.ProductID = d.ProductID
JOIN Purchasing.Vendor e on b.VendorID = e.BusinessEntityID