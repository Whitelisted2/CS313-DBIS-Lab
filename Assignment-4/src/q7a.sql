-- INSERTION INTO ALL THE TABLES

SELECT * FROM department;
INSERT INTO department VALUES('Biotechnology', 'Swift', 1000000);
SELECT * FROM department;

SELECT * FROM student;
INSERT INTO student VALUES('17685', 'Rohan', 'Biotechnology', 150);
SELECT * FROM student;

SELECT * FROM instructor;
INSERT INTO instructor VALUES('10034', 'Nirmit', 'Biotechnology', 125000);
SELECT * FROM instructor;

SELECT * FROM advisor;
INSERT INTO advisor VALUES('17685', '10034');
SELECT * FROM advisor;

SELECT * FROM course;
INSERT INTO course VALUES('BT-605', 'Biomedical Imaging', 'Biotechnology', 6);
SELECT * FROM course;

SELECT * FROM prereq;
INSERT INTO prereq VALUES('BT-605', 'CS-101');
INSERT INTO prereq VALUES('BT-605', 'BIO-101');
SELECT * FROM prereq;
