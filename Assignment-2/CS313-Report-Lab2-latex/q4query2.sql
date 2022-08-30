SELECT ID, name FROM (
SELECT DISTINCT A.ID
FROM(
    SELECT * FROM takes
    ) AS A, takes
WHERE A.grade = 'A' AND takes.grade = 'C' AND A.ID = takes.ID
  ) AS B NATURAL JOIN student;