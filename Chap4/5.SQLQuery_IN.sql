-- column | expression IN values
--Toán tử IN
--SELECT * FROM Student WHERE Id IN (SELECT Id FROM Student WHERE Address = N'Hà Nội' OR Address = N'Hồ Chí Minh')
--VD1 Cho biết thông tin môn học có số tín chỉ là 3.
--SELECT * FROM Subject WHERE Id IN(SELECT Id FROM Subject WHERE Credit = 3)
--VD2 Cho biết thông tin các môn học được đăng ký bởi sinh viên mã X và thời gian đăng ký tương ứng.
/*SELECT 
	Subject.*,
	Register.RegisterTime
FROM 
	Subject,Register
WHERE

	Register.StudentId = 'B25DCCN101'
	AND
	Register.SubjectId = Subject.Id
	AND
	Subject.Id in (
			SELECT SubjectId 
			FROM
				Register,Subject
			WHERE Register.StudentId = 'B25DCCN101' AND Subject.Id =Register.SubjectId)
	*/
--VD3Cho biết thông tin các sinh viên đăng ký các môn học có 3 tín chỉ.
/*SELECT Student.*,Register.RegisterTime
FROM Student,Register,Subject
WHERE 
	Student.Id = Register.StudentId AND Subject.Id = Register.SubjectId AND

	Subject.Id in (SELECT Id From Subject WHERE Subject.Credit = 3)

*/
--VD4: Cho biết thông tin các sinh viên có điểm TB >= 3.2 và đăng ký các môn học có số tín chỉ >= 3.
/*SELECT Student.*,Register.RegisterTime
FROM Student,Register,Subject
WHERE 
	Student.Id = Register.StudentId AND Subject.Id = Register.SubjectId AND
	 Student.Gpa >=3.2 AND
	Subject.Id in (SELECT Id From Subject WHERE Subject.Credit >= 3)*/
--VD5:Cho biết thông tin các sinh viên không đăng ký bất kỳ môn học nào.
SELECT Student.*
FROM Student
WHERE 
	Id NOT IN (SELECT StudentId FROM Register)
--VD6:Cho biết thông tin các môn học không có sinh viên nào đăng ký.
SELECT Subject.*
FROM Subject
WHERE 
	Id NOT IN (SELECT SubjectId FROM Register)