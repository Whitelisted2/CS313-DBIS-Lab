-- Q1) Creating User and Database called lab3
CREATE USER 'lab3'@'localhost' IDENTIFIED BY 'tumajarbisaun';
CREATE DATABASE lab3;
GRANT ALL PRIVILEGES ON lab3.* TO 'lab3'@'localhost';

-- Q2) Creation of Tables
USE lab3;
CREATE TABLE part(
    `part-no` INT(6) PRIMARY KEY,
    `part-name` VARCHAR(45) NOT NULL,
    color VARCHAR(7),
    weight NUMERIC(7,3)
    );
CREATE TABLE supplier(
    `supplier-no` INT(5) PRIMARY KEY,
    `sup-name` VARCHAR(45) NOT NULL,
    city VARCHAR(30) NOT NULL, 
    bank VARCHAR(30)
    );
CREATE TABLE shipment(
    `shipment-no` INT(7) PRIMARY KEY,
    `part-no` INT(6) NOT NULL,
    `supplier-no` INT(5) NOT NULL,
    date DATE,
    quantity INT(5),
    price NUMERIC(7,2),
    FOREIGN KEY (`part-no`) REFERENCES part(`part-no`),
    FOREIGN KEY (`supplier-no`) REFERENCES supplier(`supplier-no`)
    );

-- Q3) Insertion of one tuple in each table
INSERT INTO part VALUES (10034, "Imager Chip", "#ed795b", 3.4);
INSERT INTO supplier VALUES (2143, "Aurora Tech.", "Bengaluru", "SBI");
INSERT INTO shipment VALUES (1000232, 10034, 2143, "2022-09-01", 3400, 35.4);

-- code for deleting all records except the individually entered ones
-- DELETE FROM shipment WHERE `shipment-no` <> 1000232;
-- DELETE FROM part WHERE `part-no` <> 10034;
-- DELETE FROM supplier WHERE `supplier-no` <> 2143;

-- Q5) SQL Queries for the given situations (code also in report)

-- (a) List suppliers who have supplied red parts.
SELECT DISTINCT `sup-name` FROM (part NATURAL JOIN shipment) NATURAL JOIN supplier WHERE color = "red";

-- (b) Get the total cost of shipments for all suppliers for making payments to them.
SELECT `supplier-no`, `sup-name`, SUM(quantity*price) FROM shipment NATURAL JOIN supplier GROUP BY shipment.`supplier-no`;

-- (c) List suppliers who have supplied all parts
SELECT supplier.`supplier-no`, supplier.`sup-name`
FROM (part NATURAL JOIN shipment) NATURAL JOIN supplier
GROUP BY supplier.`supplier-no`
HAVING COUNT(distinct part.`part-no`) = (
    SELECT COUNT(DISTINCT part.`part-no`)
    FROM part
);


-- ______________________________________________end of code___________________________________________
-- doubt to ask in lab : 
-- why is this code below not working ??? (even with brackets)
-- try that example of the slides; that biology thing !!

-- SELECT `supplier-no`, `sup-name`
-- FROM supplier AS A
-- WHERE NOT EXISTS(
--        SELECT DISTINCT `part-no`
--        FROM part
--      EXCEPT
--         SELECT DISTINCT B.`part-no`
--         FROM shipment AS B
--         WHERE A.`supplier-no` = B.`supplier-no`
-- );