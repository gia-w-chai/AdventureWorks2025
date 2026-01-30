USE AdventureWorks2025;

SELECT
    st.Name AS RegionName,
    CASE
        WHEN c.StoreID IS NOT NULL THEN 'Store'
        ELSE 'Individual'
    END AS CustomerType,
    SUM(soh.SubTotal) AS TotalSales,
    COUNT(DISTINCT soh.SalesOrderID) AS OrderCount,
    SUM(soh.SubTotal) / NULLIF(COUNT(DISTINCT soh.SalesOrderID), 0) AS AvgOrderValue
FROM Sales.SalesOrderHeader soh
INNER JOIN Sales.SalesTerritory st
    ON soh.TerritoryID = st.TerritoryID
INNER JOIN Sales.Customer c
    ON soh.CustomerID = c.CustomerID
LEFT JOIN Sales.Store s
    ON c.StoreID = s.BusinessEntityID
GROUP BY
    st.Name,
    CASE
        WHEN c.StoreID IS NOT NULL THEN 'Store'
        ELSE 'Individual'
    END
ORDER BY AvgOrderValue DESC;
