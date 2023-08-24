/*
SELECT
    columns
FROM
    tables
WHERE
    conditions
ORDER BY
   columns
   */
SELECT *
FROM Student

WHERE  (Gpa >= 3.35 AND Major = 'CNTT')
ORDER BY Gpa DESC
