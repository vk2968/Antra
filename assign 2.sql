select count(*) 
from Production.Product 

select count(*) from Production.Product where ProductSubcategoryID is not null 


SELECT 
 ProductSubcategoryID,COUNT(*) AS CountedProducts
FROM  Production.Product
WHERE ProductSubcategoryID IS NOT NULL
GROUP BY  ProductSubcategoryID
ORDER BY ProductSubcategoryID

select ProductSubcategoryID, count(*) 
from Production.Product 
where ProductSubcategoryID is null
group by ProductSubcategoryID


select sum(quantity) from Production.ProductInventory AS Abc

SELECT  ProductID,SUM(Quantity) AS 'Total Quantity'
FROM  Production.ProductInventory
WHERE  LocationID = 40
GROUP BY ProductID
HAVING  SUM(Quantity) < 100

select * from Production.Product

select shelf,ProductID,sum(quantity)
from Production.ProductInventory 
where LocationID = 40 
group by Shelf,ProductID
having sum(quantity)<100


select productID, Avg(quantity)
from Production.ProductInventory
where LocationID=10
group by ProductID

select ProductID,Shelf,avg(quantity) as TheAvg
from Production.ProductInventory
group by ProductID,Shelf 

select ProductID,Shelf,avg(quantity) as Theavg 
from Production.ProductInventory 
where Shelf <> 'n/a'
group by ProductID,Shelf

select Color,Class, count(*) as TheCount, avg(listprice) as Avgprice
from Production.Product
where Color is not null and class is not null 
group by color, Class

select * from Person.CountryRegion
select * from person.StateProvince

select c.CountryRegionCode as country , s.StateProvinceCode
from person.CountryRegion c join person.StateProvince s on c.CountryRegionCode = s.CountryRegionCode


select c.CountryRegionCode as country , s.StateProvinceCode
from person.CountryRegion c join person.StateProvince s on c.CountryRegionCode = s.CountryRegionCode
where c.name in (' Germany' ,'Canada') 



