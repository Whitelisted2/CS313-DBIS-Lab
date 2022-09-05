SELECT DISTINCT `sup-name` 
FROM (part NATURAL JOIN shipment) NATURAL JOIN supplier 
WHERE color = "red";
