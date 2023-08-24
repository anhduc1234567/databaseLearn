--Tạo view
/*
CREATE VIEW [OR ALTER]schema_name.view_name[columns]
AS
    select_statement;
*/
--1.Tạo view chứa thông tin các môn học trong bảng Subjects.
/*CREATE VIEW SubjectsInfo
AS 
	SELECT * FROM Subjects
SELECT * FROM SubjectsInfo*/
--2.Tạo view cho biết tên nhân viên quản lý và danh sách nhân viên dưới quyền của họ.
/*CREATE VIEW ManagerAndStaff
AS
SELECT sf1.FirstName AS StaffName , sf2.FirstName AS ManagerName
FROM 
	Staffs sf1
	INNER JOIN Staffs sf2
	ON sf1.ManagerId = sf2.StaffId AND sf1.StaffId > sf2.StaffId*/
--3.Tạo view cho biết số lượng môn học đăng ký của từng sinh viên.
/*CREATE VIEW NumOfRegisterStudent
AS
SELECT s.FirstName,s.BirthDate,s.Major ,COUNT(r.StudentId) AS NumReg
FROM Students s 
	INNER JOIN Registers r
	ON S.StudentId = r.StudentId
GROUP BY 
	s.FirstName,s.BirthDate,s.Major,r.StudentId*/
--4.Tạo view cho biết sinh viên nào đăng ký môn học sớm nhất.
/*CREATE VIEW SoonestStudentReg
AS

SELECT TOP 1 WITH TIES s.FirstName,s.BirthDate,s.Major ,r.RegisterTime

FROM Students s 
	INNER JOIN Registers r
	ON S.StudentId = r.StudentId
ORDER BY r.RegisterTime
*/
--5.Tạo view cho biết môn học nào được đăng ký sớm nhất.

/*CREATE VIEW SoonestSubjecReg
AS
SELECT TOP 1 WITH TIES s.Name,s.Credit,s.NumOfLesson ,r.RegisterTime

FROM Subjects s 
	INNER JOIN Registers r
	ON S.SubjectId = r.SubjectId
ORDER BY r.RegisterTime*/
--6.Tạo view cho biết sinh viên nào không đăng ký môn học.
/*CREATE VIEW StudentDontReg
AS
SELECT s.*
FROM Students s
	LEFT JOIN Registers r
	ON s.StudentId = r.StudentId
WHERE r.StudentId IS NULL*/
--7.Tạo view cho biết tên các quận khách hàng đang ở mà không có bất cứ một cửa hàng công nghệ nào.
/*CREATE VIEW StoresDistricy
AS
SELECT DISTINCT District
FROM Customers 
WHERE 
	District NOT IN(
			SELECT 
				st.District
			FROM
				Stores st
		);*/
