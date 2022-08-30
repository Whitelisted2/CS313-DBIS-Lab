-- The comments below describe the concepts (related to SELECT) illustrated by the corresponding queries!

-- Basic stuff; SELECT, NATURAL JOIN, Logical operators, ORDER BY
SELECT *
FROM (student NATURAL JOIN department) 
WHERE (building = 'Taylor' AND tot_cred >= 50) OR building = 'Watson'
ORDER BY ID DESC;

-- Aggregate functions, Nested subqueries, (ORDER BY doesn't matter here)
SELECT COUNT(*), MAX(tot_cred), MIN(tot_cred), AVG(tot_cred), SUM(tot_cred)
FROM(
  SELECT * 
  FROM (student NATURAL JOIN department) 
  WHERE (building = 'Taylor' AND (tot_cred BETWEEN 50 AND 110)) 
  OR building = 'Watson'
  -- ORDER BY ID DESC
);

-- DISTINCT
SELECT DISTINCT i_id
FROM advisor;

-- String operations
SELECT *
FROM (student NATURAL JOIN takes)
WHERE (name LIKE '%s%') AND (name NOT LIKE '_h%');

-- GROUP BY, HAVING
SELECT dept_name, AVG(tot_cred)
FROM student
GROUP BY dept_name
HAVING AVG(tot_cred) > 82;
