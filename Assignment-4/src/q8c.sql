SELECT * FROM instructor;
UPDATE instructor
SET salary = 1.1*salary
WHERE dept_name IN(
    SELECT dept_name
    FROM department
    WHERE budget>900000
    );
SELECT * FROM instructor;