-- BIẾN TRONG Sp
--DECLARE @variable_name [AS] type; khai báo 1 biến
-- SET @name = VALUES
--VD1 : sử dụng trong câu truy vấn
/*DECLARE @major AS NVARCHAR(20) 
SET @major = 'CNTT'
SELECT * FROM Students WHERE Major = @major*/
--VD2: set giá trị 
-- ĐẾM Số sv không đăng ký 
/*DECLARE @numofstudentNotReg AS INT
SET @numofstudentNotReg = (
SELECT	COUNT(*)
	FROM Students s
		LEFT JOIN Registers r
			ON s.StudentId = r.StudentId
		WHERE r.StudentId IS NULL)
PRINT @numofstudentNotreg*/
--VD1:Khai báo biến lưu giá trị điểm Gpa thấp nhất của sinh viên trong bảng Students. Hiển thị giá trị này ra màn hình.
/*DECLARE @maxgpa AS FLOAT

SELECT @maxgpa = MAX(Gpa)
FROM Students 

PRINT @maxgpa*/
--VD2:Khai báo biến lưu trữ giá trị điểm Gpa trung bình của các sinh viên trong bảng Students. Hiển thị kết quả ra màn hình.
/*DECLARE @avrgpa AS FLOAT

SELECT @avrgpa = AVG(Gpa)
FROM Students 

PRINT @avrgpa*/
--VD3:Khai báo biến đếm số lượng sinh viên có điểm TB từ 3.50 trở lên trong bảng Students. Hiển thị kết quả ra màn hình.
/*DECLARE @count AS FLOAT

SELECT @count = COUNT(*)
FROM Students 
WHERE Gpa >= 3.50
PRINT @count*/
--VD4:Biến lưu danh sách học sinh
/*CREATE OR ALTER PROC nsp_listStudent 
AS BEGIN
DECLARE @liststudent NVARCHAR(MAX) 
SET @liststudent = ''
SELECT 
	@liststudent = @liststudent +  StudentId +' - '+ Fullname +' - ' + CONVERT(varchar(50),BirthDate) + CHAR(10)
FROM Students
ORDER BY StudentId
PRINT @liststudent
END*/
EXEC nsp_listStudent
