-- toán tử AND
--vd1: Cho biết thông tin các sinh viên trong tên có chữ ‘h’ và học CNTT?
--SELECT * FROM Student WHERE FullName LIKE '%h%' AND major = 'CNTT'
--vd2: Cho biết sv học CNTT và gpa >= 3.6
--SELECT * FROM Student WHERE Gpa >= 3.6 AND Major = 'CNTT'
--vd3:Hãy cho biết sinh viên mã X đăng ký những môn học nào?
/*
SELECT  
	Subject.Name 
FROM Subject, Register 
WHERE Register.StudentId = 'B25DCCN101' AND Subject.Id = Register.SubjectId 
*/
---vd4: Hãy cho biết môn học tên x có những sinh viên nào đăng ký
/*SELECT 
	Student.FullName
FROM Student,Register,Subject WHERE Subject.Name = 'C++' AND Register.StudentId = Student.Id AND Register.SubjectId = Subject.Id*/
--VD5 :Hãy cho biết tên môn học sinh viên mã X đăng ký và thời gian đăng ký mỗi môn học đó
/*SELECT 
Subject.Name, Register.RegisterTime
FROM Subject,Register WHERE Register.StudentId = 'B25DCCN101' AND Subject.Id = Register.SubjectId*/
--VD6: Hãy cho biết top 3 sinh viên đầu tiên đăng ký môn học C#
/*SELECT TOP 3 WITH TIES 
	Student.FullName ,
	Register.RegisterTime
FROM 
Student,Register,Subject 
WHERE Subject.Name = N'C#' AND Register.SubjectId = Subject.Id AND Register.StudentId = Student.Id 
ORDER BY Register.RegisterTime*/
--VD6: Hãy cho bết top 3 môn học đầu tiên mà sinh viên mã X đăng ký?
SELECT TOP 3
	Subject.*,Student.FullName
FROM Register,Subject,Student WHERE Register.StudentId = 'B25DCCN101' AND Subject.Id = Register.SubjectId AND Student.Id = Register.StudentId
