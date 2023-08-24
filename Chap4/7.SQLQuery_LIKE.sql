--Toán tử LIKE : column | expression LIKE pattern [ESCAPE escape_character]
/*Kí tự %: khớp với bất kỳ 0, 1 hoặc nhiều kí tự.
Kí tự _: bất kì kí tự đơn nào.
Tập [các kí tự]: bất kì kí tự nào trong tập kí tự chỉ định bên trong cặp móc vuông.
Tập [a-z]: khớp với bất kì kí tự nào trong khoảng từ a-z.
Kí tự [^abc]: khớp với bất kì kí tự nào khác a, b, c.*/
--VD1: Cho biết thông tin các môn học trong tên có chữ ‘c’.
--SELECT * FROM Subject WHERE Name LIKE '%c%'
--VD2: Cho biết mã, tên các sinh viên đăng ký môn C++ mà trong tên sinh viên có chữ ‘n’.
/*SELECT Student.FullName,Student.Id
FROM 
	Student,Register,Subject 
WHERE 
	Subject.Name = 'C++' AND Register.SubjectId = Subject.Id AND Register.StudentId = Student.Id
	AND Student.FullName LIKE '%n%'*/
--VD3: Cho biết mã, họ, tên, điểm TB các sinh viên trong danh sách có họ không bắt đầu với chữ ‘h’, ‘n’ hoặc ‘t’.
/*SELECT
	Id,
	FullName
	Gpa
FROM
	Student 
WHERE
	FullName NOT LIKE 'h%'
	AND
	FullName NOT LIKE 'n%'
	AND
	FullName NOT LIKE 't%'*/
--	VD4:Cho biết thông tin các sinh viên đăng ký môn SQL mà trong tên có chữ ‘n’ và có điểm TB dạng 3.x.
SELECT Student.*
FROM
	Student,Register,Subject
WHERE
	Subject.Name = 'SQL' AND
	Register.SubjectId = Subject.Id AND
	Student.Id = Register.StudentId AND
	Student.FullName LIKE '%n%' AND
	Student.Gpa LIKE'3.%'
