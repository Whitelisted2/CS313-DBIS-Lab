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