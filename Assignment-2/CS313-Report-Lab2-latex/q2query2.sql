SELECT * FROM(
  SELECT * FROM(
    SELECT * FROM(
      SELECT * FROM(
        SELECT * FROM student WHERE student.name = 'Shankar'
      ) AS R1, department WHERE R1.dept_name = department.dept_name
    ) AS R2, takes WHERE R2.ID = takes.ID
  ) AS R3, advisor WHERE R3.ID = advisor.s_ID
) AS R4, instructor WHERE R4.i_id = instructor.ID;