-- TOÁN TỬ BETWEEN  column | expression BETWEEN start AND end.
-- VD1Cho biết các sinh viên đăng ký môn học trong khoảng thời gian từ 00:00 đến  01:59.
/*SELECT DISTINCT
	Student.*,Register.RegisterTime
FROM 
	Student,Register 
WHERE 
	DATEPART(HOUR, RegisterTime)  BETWEEN 0 AND 1
	AND Register.StudentId = Student.Id*/
--VD2: Cho biết các môn học được đăng ký trong thời gian từ 01:00 đến 01:30.
/*SELECT DISTINCT
	Subject.*
FROM 
	Subject,Register 
WHERE 
	DATEPART(HOUR, RegisterTime) = 1 AND DATEPART(MINUTE, RegisterTime) BETWEEN 0 AND 30
	AND Register.SubjectId = Subject.Id
	*/
--VD3: Cho biết các sinh viên không đăng ký môn học trong thời gian từ 00:00 đến 01:59.
/*SELECT DISTINCT
	s.*
FROM
	Student s,
	Register r
WHERE
	r.StudentId = s.Id
	AND
	s.Id NOT IN(
		SELECT 
			r1.StudentId 
		FROM 
			Register r1
		WHERE
			DATEPART(HOUR, r1.RegisterTime)  BETWEEN 0 AND 1
	)*/
--VD4:Cho biết các môn học không được sinh viên nào đăng ký trong khoảng thời gian từ 01:00 đến 02:59.
SELECT DISTINCT Subject.*,Register.RegisterTime
FROM 
	Subject,Register
WHERE
	Register.SubjectId = Subject.Id
	AND Subject.Id NOT IN (
	SELECT SubjectId 
	FROM Register 
	WHERE DATEPART(HOUR,Register.RegisterTime) BETWEEN 1 AND 2 AND DATEPART(MINUTE,Register.RegisterTime) BETWEEN 0 AND 59)
SELECT DISTINCT
	s.*,r.RegisterTime
FROM
	Subject s,
	Register r
WHERE
	r.SubjectId = s.Id
	AND
	r.SubjectId NOT IN(
		SELECT 
			r1.SubjectId 
		FROM 
			Register r1
		WHERE
			DATEPART(HOUR, r1.RegisterTime) BETWEEN 1 AND 2
	)