-- (a) List suppliers who have supplied red parts.
SELECT DISTINCT `sup-name`
FROM (part NATURAL JOIN shipment) NATURAL JOIN supplier
WHERE color = "red";

-- (b) Get the total cost of shipments for all suppliers for making payments to them.
SELECT `supplier-no`, `sup-name`, SUM(quantity*price)
FROM shipment NATURAL JOIN supplier
GROUP BY shipment.`supplier-no`;

-- (c) List suppliers who have supplied all parts
SELECT supplier.`supplier-no`, supplier.`sup-name`
FROM (part NATURAL JOIN shipment) NATURAL JOIN supplier
GROUP BY supplier.`supplier-no`
HAVING COUNT(distinct part.`part-no`) = (
    SELECT COUNT(DISTINCT part.`part-no`)
    FROM part
);