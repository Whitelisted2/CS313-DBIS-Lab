SELECT * FROM(
    (
        SELECT course_id, title
        FROM course NATURAL JOIN section
        WHERE year = '2007' 
        AND semester = 'Fall' 
        AND dept_name = 'Comp. Sci.'
    ) as A NATURAL JOIN (
        SELECT course_id, COUNT(ID)
		FROM takes
		GROUP BY course_id
		HAVING COUNT(ID)>15
    ) as B
)
ORDER BY course_id;