/*SELECT
    columns
INTO
    destination
FROM
    source
WHERE
    conditions*/
SELECT 
	*
INTO
 HN_student
FROM 
Students
WHERE
Address = N'Hà Nội'
/*INSERT INTO HN_student
SELECT * FROM Students*/