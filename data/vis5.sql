USE AdventureWorks2025;


SELECT TOP 10 * FROM Production.Product;
SELECT TOP 10 * FROM Sales.SalesOrderDetail;


SELECT TOP 10
    p.Name AS ProductName,
    SUM(sod.LineTotal) AS TotalSales
FROM Sales.SalesOrderDetail sod
INNER JOIN Production.Product p
    ON sod.ProductID = p.ProductID
GROUP BY p.Name
ORDER BY TotalSales DESC;
