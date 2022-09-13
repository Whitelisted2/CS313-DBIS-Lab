SELECT * FROM time_slot;
INSERT INTO time_slot VALUES('E', 'M', 15, 0, 16, 20);
SELECT * FROM time_slot;

SELECT * FROM classroom;
INSERT INTO classroom VALUES('Swift', '2002', 54);
SELECT * FROM classroom;

SELECT * FROM section;
INSERT INTO section VALUES('BT-605', '2', 'Fall', 2011, 'Swift', '2002', 'E');
SELECT * FROM section;

SELECT * FROM takes;
INSERT INTO takes VALUES('17685', 'BT-605', '2', 'Fall', 2011, 'A+');
INSERT INTO takes VALUES('17685', 'BIO-101', '1', 'Summer', 2009, 'A+');
INSERT INTO takes VALUES('17685', 'CS-101', '1', 'Fall', 2009, 'A');
INSERT INTO takes VALUES('17685', 'PHY-101', '1', 'Fall', 2009, 'B');
INSERT INTO takes VALUES('17685', 'CS-315', '1', 'Spring', 2010, 'B+');
SELECT * FROM takes;

SELECT * FROM teaches;
INSERT INTO teaches VALUES('10034', 'BT-605', '2', 'Fall', 2011);
SELECT * FROM teaches;

-- for 8b
INSERT INTO course
VALUES('CS-303', 'Fundamentals of Database Systems', 'Comp. Sci.', 4);

-- for 8a
INSERT INTO department VALUES('Civil', 'Watson', '70000');
INSERT INTO course VALUES('CV-302', 'Design of Steel Structures', 'Civil', '5');
INSERT INTO section VALUES('CV-302', '1', 'Summer', '2009', 'Watson', '100', '6');
INSERT INTO section VALUES('CV-302', '1', 'Spring', '2009', 'Watson', '100', '6');
INSERT INTO teaches VALUES('10101', 'CV-302', '1','Summer', '2009');
INSERT INTO teaches VALUES('10101', 'CV-302', '1','Spring', '2009');
UPDATE teaches SET ID = '45565' WHERE ID = '10101' AND semester = 'Spring';

-- for 8d
INSERT INTO student VALUES('10012', 'Devdatt', 'Comp. Sci.', 150);
INSERT INTO student VALUES('10013', 'Heisenberg', 'Comp. Sci.', 150);
INSERT INTO student VALUES('10014', 'Narayan', 'Comp. Sci.', 150);
INSERT INTO student VALUES('10015', 'Kalyani', 'Comp. Sci.', 150);
INSERT INTO student VALUES('10016', 'Pai', 'Comp. Sci.', 150);
INSERT INTO student VALUES('10017', 'Prabhu', 'Comp. Sci.', 150);
INSERT INTO student VALUES('10018', 'Kamath', 'Comp. Sci.', 150);
INSERT INTO student VALUES('10019', 'Shetty', 'Comp. Sci.', 150);
INSERT INTO student VALUES('10020', 'Rao', 'Comp. Sci.', 150);
INSERT INTO student VALUES('10021', 'Shenoy', 'Comp. Sci.', 150);
INSERT INTO student VALUES('10022', 'Bhat', 'Comp. Sci.', 150);