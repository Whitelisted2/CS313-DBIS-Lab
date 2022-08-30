-- INSERTION INTO ALL THE TABLES

SELECT * FROM classroom;
INSERT INTO classroom VALUES('Swift', '2002', 54);
SELECT * FROM classroom;

SELECT * FROM department;
INSERT INTO department VALUES('Biotechnology', 'Swift', 1000000);
SELECT * FROM department;

SELECT * FROM course;
INSERT INTO course VALUES('BT-605', 'Biomedical Imaging', 'Biotechnology', 6);
SELECT * FROM course;

SELECT * FROM instructor;
INSERT INTO instructor VALUES('10034', 'Nirmit', 'Biotechnology', 125000);
SELECT * FROM instructor;

SELECT * FROM time_slot;
INSERT INTO time_slot VALUES('E', 'M', 15, 0, 16, 20);
SELECT * FROM time_slot;

SELECT * FROM section;
INSERT INTO section VALUES('BT-605', '2', 'Fall', 2022, 'Swift', '2002', 'E');
SELECT * FROM section;

SELECT * FROM teaches;
INSERT INTO teaches VALUES('10034', 'BT-605', '2', 'Fall', 2022);
SELECT * FROM teaches;

SELECT * FROM student;
INSERT INTO student VALUES('17685', 'Rohan', 'Biotechnology', 150);
SELECT * FROM student;

SELECT * FROM takes;
INSERT INTO takes VALUES('17685', 'BT-605', '2', 'Fall', 2022, 'A+');
INSERT INTO takes VALUES('17685', 'BIO-101', '1', 'Summer', 2018, 'A+');
INSERT INTO takes VALUES('17685', 'CS-101', '1', 'Fall', 2017, 'A');
INSERT INTO takes VALUES('17685', 'PHY-101', '1', 'Fall', 2017, 'B');
INSERT INTO takes VALUES('17685', 'CS-315', '1', 'Spring', 2018, 'B+');
SELECT * FROM takes;