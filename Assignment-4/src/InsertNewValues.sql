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
INSERT INTO course VALUES('CS-303', 'Fundamentals of Database Systems', 'Comp. Sci.', 4);

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
INSERT INTO student VALUES('10023', 'Hegde', 'Comp. Sci.', 150);
INSERT INTO student VALUES('10024', 'Bhakthan', 'Comp. Sci.', 150);
INSERT INTO student VALUES('10025', 'Doraemon', 'Comp. Sci.', 150);
INSERT INTO student VALUES('10026', 'GadgetMan', 'Comp. Sci.', 150);
INSERT INTO student VALUES('10027', 'Aryan', 'Comp. Sci.', 150);
INSERT INTO student VALUES('10028', 'Trimukhe', 'Comp. Sci.', 150);
INSERT INTO student VALUES('10029', 'Dhananjay', 'Comp. Sci.', 150);

INSERT INTO section VALUES('CS-101', '1', 'Fall', 2007, 'Swift', '2002', 'E');
INSERT INTO section VALUES('CS-190', '1', 'Fall', 2007, 'Swift', '2002', 'B');

INSERT INTO teaches VALUES('10101', 'CS-101', '1', 'Fall', '2007');
INSERT INTO teaches VALUES('10101', 'CS-190', '1', 'Fall', '2007');

INSERT INTO takes VALUES('10012', 'CS-101', '1', 'Fall', 2007, 'A+');
INSERT INTO takes VALUES('10013', 'CS-101', '1', 'Fall', 2007, 'A+');
INSERT INTO takes VALUES('10014', 'CS-101', '1', 'Fall', 2007, 'A');
INSERT INTO takes VALUES('10015', 'CS-101', '1', 'Fall', 2007, 'B');
INSERT INTO takes VALUES('10016', 'CS-101', '1', 'Fall', 2007, 'B+');
INSERT INTO takes VALUES('10017', 'CS-101', '1', 'Fall', 2007, 'A+');
INSERT INTO takes VALUES('10018', 'CS-101', '1', 'Fall', 2007, 'A+');
INSERT INTO takes VALUES('10019', 'CS-101', '1', 'Fall', 2007, 'A');
INSERT INTO takes VALUES('10020', 'CS-101', '1', 'Fall', 2007, 'B');
INSERT INTO takes VALUES('10021', 'CS-101', '1', 'Fall', 2007, 'B+');
INSERT INTO takes VALUES('10022', 'CS-101', '1', 'Fall', 2007, 'A+');
INSERT INTO takes VALUES('10023', 'CS-101', '1', 'Fall', 2007, 'A+');
INSERT INTO takes VALUES('10024', 'CS-101', '1', 'Fall', 2007, 'A');
INSERT INTO takes VALUES('10025', 'CS-101', '1', 'Fall', 2007, 'B');
INSERT INTO takes VALUES('10026', 'CS-101', '1', 'Fall', 2007, 'B+');
INSERT INTO takes VALUES('10027', 'CS-101', '1', 'Fall', 2007, 'A+');
INSERT INTO takes VALUES('10028', 'CS-101', '1', 'Fall', 2007, 'A+');
INSERT INTO takes VALUES('10029', 'CS-101', '1', 'Fall', 2007, 'A');

INSERT INTO takes VALUES('10013', 'CS-190', '1', 'Fall', 2007, 'A+');
INSERT INTO takes VALUES('10012', 'CS-190', '1', 'Fall', 2007, 'A+');
INSERT INTO takes VALUES('10014', 'CS-190', '1', 'Fall', 2007, 'A');
INSERT INTO takes VALUES('10015', 'CS-190', '1', 'Fall', 2007, 'B');
INSERT INTO takes VALUES('10016', 'CS-190', '1', 'Fall', 2007, 'B+');
INSERT INTO takes VALUES('10017', 'CS-190', '1', 'Fall', 2007, 'A+');
INSERT INTO takes VALUES('10018', 'CS-190', '1', 'Fall', 2007, 'A+');
INSERT INTO takes VALUES('10019', 'CS-190', '1', 'Fall', 2007, 'A');
INSERT INTO takes VALUES('10020', 'CS-190', '1', 'Fall', 2007, 'B');
INSERT INTO takes VALUES('10021', 'CS-190', '1', 'Fall', 2007, 'B+');
INSERT INTO takes VALUES('10022', 'CS-190', '1', 'Fall', 2007, 'A+');
INSERT INTO takes VALUES('10023', 'CS-190', '1', 'Fall', 2007, 'A+');
INSERT INTO takes VALUES('10024', 'CS-190', '1', 'Fall', 2007, 'A');
INSERT INTO takes VALUES('10025', 'CS-190', '1', 'Fall', 2007, 'B');
INSERT INTO takes VALUES('10026', 'CS-190', '1', 'Fall', 2007, 'B+');
INSERT INTO takes VALUES('10027', 'CS-190', '1', 'Fall', 2007, 'A+');
INSERT INTO takes VALUES('10028', 'CS-190', '1', 'Fall', 2007, 'A+'); 
