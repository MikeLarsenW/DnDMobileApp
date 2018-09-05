/***************************/
/* Name: Michael Wessels   */
/* Class: CS 3410 	   */
/* Term: Fall 2017 	   */
/* Assgn #: 3  		   */
/***************************/

/*2.28*/
SELECT SKU, SKU_Description, WarehouseID
FROM INVENTORY
WHERE QuantityOnHand = 0 AND QuantityOnOrder > 0
ORDER BY WarehouseID DESC, SKU ASC;

/*2.29*/
SELECT SKU, SKU_Description, WarehouseID
FROM INVENTORY
WHERE QuantityOnHand > 1 AND QuantityOnHand < 10;

/*2.3*/
SELECT SKU, SKU_Description, WarehouseID, QuantityOnHand
FROM inventory
WHERE QuantityOnHand BETWEEN 2 and 9

/*2.31*/
SELECT SKU, SKU_Description
FROM inventory
WHERE SKU_Description LIKE 'Half-dome%'

/*2.32*/
SELECT SKU, SKU_Description
FROM inventory
WHERE SKU_Description LIKE '%Climb%'

/*2.33*/
SELECT SKU, SKU_Description
FROM inventory
WHERE SKU_Description LIKE '__d%'

/*2.34*/
SELECT COUNT(QuantityOnHand) AS CountQ,
SUM(QuantityOnHand) AS SumQ,
AVG(QuantityOnHand) AS AvgQ,
MIN(QuantityOnHand) AS MinQ,
MAX(QuantityOnHand) AS MaxQ
FROM inventory

/*2.35*/
/*COUNT just Counts the number of rows in the table SUM Calculates the sum of all values*/

/*2.36*/
SELECT WarehouseID,
SUM(QuantityOnHand) AS TotalItemsOnHand
FROM inventory
GROUP BY WarehouseID
ORDER BY TotalItemsOnHand desc

/*2.37*/
SELECT WarehouseID, SUM (QuantityOnHand) AS TotalItemsOnHandLT3
FROM INVENTORY
WHERE QuantityOnHand<3
GROUP BY WarehouseID
ORDER BY TotalItemsOnHandLT3 DESC;

/*2.38*/
SELECT WarehouseID, SUM (QuantityOnHand) AS TotalItemsOnHandLT3
FROM INVENTORY
WHERE QuantityOnHand<=3
GROUP BY WarehouseID
HAVING SUM (QuantityOnHand) <2
ORDER BY TotalItemsOnHandLT3 DESC;
ORDER BY TotalItemsOnHandLT3 DESC;

/*2.39*/
/*because the where clause was the first applied */

/*2.4*/
SELECT SKU, SKU_Description, WAREHOUSE.WarehouseID, WarehouseCity, WarehouseState
FROM INVENTORY, WAREHOUSE
WHERE INVENTORY.WarehouseID=WAREHOUSE.WarehouseID
AND (WarehouseCity = 'Atlanta' OR WarehouseCity = 'Bangor' OR WarehouseCity = 'Chicago')

/*2.41*/
select sku, sku_description, inventory.warehouseid, warehousecity, warehousestate
from inventory, warehouse
where warehouse.warehouseID in
(select warehouseID
from warehouse
where WarehouseCity in ('Atlanta', 'Bangor', 'Chicago'))
order by warehouse.warehousecity, sku asc, inventory.warehouseid asc

/*2.42*/
SELECT SKU, SKU_Description, WAREHOUSE.WarehouseID, WarehouseCity, WarehouseState
FROM INVENTORY, WAREHOUSE
WHERE INVENTORY.WarehouseID=WAREHOUSE.WarehouseID
AND WarehouseCity <> 'Atlanta'
AND WarehouseCity <> 'Bangor'
AND WarehouseCity <> 'Chicago';

/*2.43*/
select sku, sku_description, inventory.warehouseid, warehousecity, warehousestate
from inventory, warehouse
where warehouse.warehouseID in
(select warehouseID
from warehouse
where WarehouseCity not in ('Atlanta', 'Bangor', 'Chicago'))
order by warehouse.warehousecity, sku asc, inventory.warehouseid asc

/*2.44*/
select concat(inventory.sku_description, ' is located in ', warehouse.warehousecity) as ItemLocation
from inventory, warehouse

/*2.45*/
SELECT Sku, sku_description, inventory.WarehouseID
from inventory, warehouse
where warehouse.WarehouseID in
(select warehouseID
from warehouse
where manager like 'Lucille Smith')
order by SKU asc, warehouseid asc

/*2.46*/
select oi.sku, sku_description,
sd.warehouseid
from inventory as oi left join warehouse as sd 
on oi.WarehouseID=sd.warehouseID
order by oi.sku, sd.warehouseID

/*2.47*/
SELECT oi.sku, sku_description,
sd.warehouseid
FROM inventory AS oi
JOIN warehouse AS sd 
ON oi.WarehouseID=sd.warehouseID
WHERE sd.Manager LIKE 'Lucille Smith'
ORDER BY oi.sku, sd.warehouseID

/*2.48*/
SELECT warehouseID, AVG(QuantityOnHand) AS AvgQuanOnHanPerWare
FROM inventory
WHERE warehouseID IN
(SELECT WarehouseID
FROM Warehouse
WHERE Manager LIKE 'Lucille Smith')
GROUP BY SKU

/*2.49*/
SELECT t1.WarehouseID, AVG(t1.QuantityOnHand) AS AvgQuanOnHanSmith
FROM inventory as t1 JOIN warehouse as t2
WHERE t1.WarehouseID = t2.WarehouseID AND t2.Manager LIKE 'Lucille Smith'
GROUP BY SKU
/*2.50*/
SELECT t1.WarehouseID, AVG(t1.QuantityOnHand) AS AvgQuanOnHanSmith
FROM inventory as t1 INNER JOIN warehouse as t2
ON t1.WarehouseID = t2.WarehouseID
WHERE t2.Manager LIKE 'Lucille Smith'
GROUP BY SKU
