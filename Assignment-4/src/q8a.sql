SELECT A.course_id, A.ID, course.title, A.name FROM(
    SELECT * FROM instructor NATURAL JOIN teaches NATURAL JOIN section
) as A, course
WHERE course.course_id = A.course_id
AND course.dept_name = 'Civil' 
AND A.dept_name = 'Comp. Sci.' 
AND A.year = '2009'  
ORDER BY A.name;