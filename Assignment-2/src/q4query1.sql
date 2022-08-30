SELECT ID, name
FROM (student NATURAL JOIN takes) NATURAL JOIN section
WHERE dept_name = 'Physics' AND building = 'Watson';