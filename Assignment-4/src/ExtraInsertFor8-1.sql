INSERT INTO department VALUES('Civil', 'Watson', '70000');
INSERT INTO course VALUES('CV-302', 'Design of Steel Structures', 'Civil', '5');
INSERT INTO section VALUES('CV-302', '1', 'Summer', '2009', 'Watson', '100', '6');
INSERT INTO section VALUES('CV-302', '1', 'Spring', '2009', 'Watson', '100', '6');
INSERT INTO teaches VALUES('10101', 'CV-302', '1','Summer', '2009');
INSERT INTO teaches VALUES('10101', 'CV-302', '1','Spring', '2009');
UPDATE teaches SET ID = '45565' WHERE ID = '10101' AND semester = 'Spring';


