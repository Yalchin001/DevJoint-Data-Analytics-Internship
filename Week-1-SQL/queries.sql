/* =====================================================
   DEVJOINT DATA ANALYTICS INTERNSHIP
   WEEK 1: SQL WITH SQLITE
   DATABASE: NORTHWIND
   AUTHOR: YALCHIN HASANOV
   ===================================================== */


/* =====================================================
   CHECKPOINT 1
   SELECT / WHERE / ORDER BY / LIMIT
   ===================================================== */


/* Question 1:
   Find the order for the product named "Tofu" with the
   lowest applied discount.

   Explanation:
   This query returns the order for "Tofu" with the lowest
   discount, excluding records where the discount is 0.
*/

SELECT * FROM  "Order Details Extended" 
   Where Trim(ProductName)="Tofu" and Discount>0 
   Order By Discount Limit 1


/* Question 2:
   Find the first five orders for Helsinki in the
   Scandinavia region.

   Explanation:
   This query returns the first five orders belonging to
   Helsinki in the Scandinavia region.
*/

SELECT * FROM Orders 
   where Trim(ShipRegion)="Scandinavia" and Trim(ShipCity)="Helsinki" 
   Order By OrderDate Limit 5

   /* Question 3:
   Find the latest 20 French orders with OrderID values
   between 10250 and 11000.

   Explanation:
   This query returns the latest 20 orders from France,
   based on OrderDate, whose OrderID is between
   10250 and 11000.
*/

SELECT * FROM Orders 
   Where ShipCountry="France" and OrderID between 10250 and 11000 
   Order By OrderDate DESC limit 20

/* Question 4:
   Find the ten most recently shipped orders from Madrid
   in 2017 with freight equal to or greater than 100.

   Explanation:
   This query returns the ten most recently shipped orders
   from Madrid in 2017 where the freight is at least 100.
*/

SELECT * FROM Orders 
   Where OrderDate between "2017-01-01" and "2017-12-31" and Trim(ShipCity)="Madrid" and Freight>=100 
   Order By ShippedDate DESC limit 10


  /* Question 5:
   Find the three products with the highest calculated
   order value among records where the value is at least 500.

   Explanation:
   This query filters products where UnitPrice multiplied
   by UnitsOnOrder is at least 500, sorts them by the
   calculated value, and returns the highest three records.
*/

SELECT * FROM Products 
   Where UnitPrice*UnitsOnOrder>=500 
   Order By UnitPrice*UnitsOnOrder DESC LIMIT 3

/* =====================================================
   CHECKPOINT 2
   LEFT JOIN / INNER JOIN / SELF JOIN
   ===================================================== */


/* TASK 1 -  LEFT JOIN

   Question:
   Combine product, category, order-detail, and order
   information.

   Explanation:
   This query is used to determine product information,
   QuantityPerUnit, the category of each product, and the
   related OrderID, CustomerID, OrderDate, and ShipCountry.
*/

select pro.ProductID,pro.ProductName,pro.CategoryID,pro.QuantityPerUnit,cat.CategoryName,
   ext.OrderID,ord.CustomerID,ord.OrderDate,ord.ShipCountry from Products pro 
   left JOIN Categories cat
   on pro.CategoryId = cat.CategoryId left join "Order Details Extended" ext 
   on pro.ProductName = ext.ProductName 
   left join Orders ord on ord.OrderID = ext.OrderID


/* TASK 2 -  INNER JOIN

   Question:
   Find detailed information about products whose prices
   are above the average product price.

   Explanation:
   Based on the "Products Above Average Price" view, this
   query returns ProductID, CategoryID, UnitPrice,
   UnitsInStock, SupplierID, CategoryName, and
   SupplierRegion for the related products.
   The "Products Above Average Price" view does not contain
   ProductID, so it is joined to Products by ProductName.

   ProductDetails_V contains ProductID, so that relationship
   is created using ProductID.
*/

select abv.ProductName,pro.ProductID,pro.CategoryID,pro.UnitPrice,pro.UnitsInStock,
   pro.SupplierID,cat.CategoryName,prov.SupplierRegion from  "Products Above Average Price" abv 
   inner join Products pro 
   on abv.ProductName= pro.ProductName 
   inner join Categories cat 
   on pro.CategoryID=cat.CategoryID 
   inner join ProductDetails_V prov 
   on pro.ProductID = prov.ProductID


/* TASK 3 -  SELF JOIN

   Question:
   Identify the manager of each employee.

   Explanation:
   The Employees table is joined to itself by matching the
   ReportsTo column with EmployeeID. This makes it possible
   to display each employee together with the employee's
   manager.
*/

select emp1.LastName as EmployeeLastName,emp1.FirstName as EmployeeName,
   emp2.LastName as ManagerLastName,emp2.FirstName as ManagerName from Employees emp1 
   left join Employees emp2 
   on emp1.ReportsTo=emp2.EmployeeID


/* =====================================================
   CHECKPOINT 3
   GROUP BY AND HAVING
   ===================================================== */


/* Question:
   Calculate SUM, AVG, and record count for each category.

   Explanation:
   The records are grouped and sorted by CategoryID.
   SUM and AVG are calculated for every category.

   HAVING COUNT(*) > 1 returns categories containing more
   than one product. AVG does not include NULL values.
   There are no NULL values in this table.
*/

select CategoryID,sum(unitprice*QuantityPerUnit) as TotalSales,
   round(avg(unitprice*QuantityPerUnit),2) as Average,count(*) as Quantity from products 
   Group by CategoryID having count(*)>1 
   order by CategoryID


/* =====================================================
   CHECKPOINT 4
   SUBQUERY AND CTE
   ===================================================== */


/* Question:
   Find products whose total ordered quantity is higher
   than the overall average product quantity.

   Explanation:
   First, the CTE calculates the total quantity for every
   product.

   The subquery then calculates the average of these total
   quantities. The main query returns products whose total
   quantity is higher than the overall average and sorts
   them from highest to lowest.
*/

with ProductSales as ( select ProductName,sum(Quantity) as TotalQuantity from "Order Details Extended" 
   group by ProductName ) select * from ProductSales 
   where TotalQuantity >(select avg(TotalQuantity) from ProductSales) order by TotalQuantity desc


/* =====================================================
   CHECKPOINT 5
   WINDOW FUNCTIONS
   ===================================================== */


/* 1. RANK

   Explanation:
   RANK does not assign a unique sequence number to every
   row. Rows containing the same ProductID receive the same
   rank.

   If the first ProductID appears several times, all those
   rows receive rank 1. The following ProductID receives
   its rank based on the number of preceding rows, which
   may create gaps between rank values.
*/

select ProductID,ProductName,ExtendedPrice,
rank()
over(order by ProductID) 
from "Order Details Extended"


/* 2. ROW_NUMBER

   Explanation:
   ROW_NUMBER assigns a different sequential number to
   every row, even when several rows have the same
   ProductID.
*/

select ProductID,ProductName,ExtendedPrice,
row_number()
over(order by ProductID) 
from "Order Details Extended"


/* 3. SUM OVER

   Explanation:
   SUM with OVER calculates a cumulative quantity according
   to the ProductID order. The calculated value continues
   increasing as the query moves through the rows.
*/

select ProductID,ProductName,Sum(Quantity) over(order by ProductID) 
from "Order Details Extended"


/* =====================================================
   CHECKPOINT 6
   QUERY OPTIMIZATION
   ===================================================== */


/* 1. CREATE INDEX

   Explanation:
   Query optimization means returning the same SQL result
   by using less time and fewer system resources.

   One commonly used optimization method is an index.
   Another method is writing the query more efficiently,
   such as replacing a correlated subquery with a JOIN.

   An index is created on columns frequently used in JOIN,
   WHERE, ORDER BY, and GROUP BY operations. It helps SQL
   locate the required data faster.
*/

create index idx_OrderId
ON Orders(OrderId)

select * from Orders Where OrderId=20000


/* 2. REPLACING A CORRELATED SUBQUERY WITH A JOIN

   Question:
   Compare each product's price with the average price of
   its own category.

   Explanation:
   A correlated subquery reads a product, calculates the
   category average, performs the comparison, and then
   continues to the next product.

   Since the table contains 77 rows, the correlated
   subquery repeats this process for the rows in the table.
   This approach may become slow when working with a large
   dataset.

   With the JOIN approach, the average price of every
   category is calculated first. The calculated category
   averages are then joined to the Products table.

   As a result, the category averages are calculated once
   and the products are compared with the appropriate
   category average.
*/

select pro.ProductName,pro.UnitPrice,stat.avgprice 
from Products pro
left join
(select CategoryID,
round(avg(UnitPrice),2) as Avgprice
from Products
group by CategoryID) stat
on pro.CategoryID=stat.CategoryID
where pro.UnitPrice>stat.avgprice
