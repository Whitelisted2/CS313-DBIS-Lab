SELECT * FROM(
  SELECT * FROM(
	SELECT * FROM(
	  (student NATURAL JOIN department) NATURAL JOIN takes
	) WHERE student.name = 'Shankar'
  ) AS A, advisor WHERE A.ID = advisor.s_id
) AS B, instructor WHERE B.i_ID = instructor.ID;