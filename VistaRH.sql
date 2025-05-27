CREATE VIEW RH_PowerBI as
Select 
T1.BusinessEntityID,
T1.StartDate as fechaContrato,
T1.EndDate as finContrato,
T2.GroupName as Gerencia,
T2.Name as Departamento,
T3.FirstName + ' ' + T3.LastName as NombreEmpleado,
T4.JobTitle,
T4.Gender,
T4.MaritalStatus,
T4.BirthDate
FROM HumanResources.EmployeeDepartmentHistory T1
inner join HumanResources.Department T2 on T1.DepartmentID = T2.DepartmentID
inner join Person.Person T3 on T1.BusinessEntityID = T3.BusinessEntityID
inner join HumanResources.Employee T4 on T1.BusinessEntityID = T4.BusinessEntityID