--lệnh order by
/*
SELECT 
	columns
FROM
	tables
ORDER BY
	columns|expression[ASC|DESC]
*/
--ví dụ 1------------
/*
SELECT 
	Id,FullName,Gpa
FROM
	Student
ORDER BY
	Gpa DESC
*/
--ví dụ 2 ------------------
/*
SELECT
	FullName,BirthDate,Gpa
FROM
	Student
WHERE
	Major = 'CNTT'
ORDER BY
	Gpa DESC,
	BirthDate ASC
*/
--ví dụ 3-----------tăng dần theo ngày sinh
/*
SELECT
	Id,FullName,Gpa
FROM
	Student
ORDER BY 
	BirthDate ASC
*/
--ví dụ 4 ----Theo độ dài họ tên tăng dần
SELECT *
FROM Student
ORDER BY
	LEN(Address) ASC





