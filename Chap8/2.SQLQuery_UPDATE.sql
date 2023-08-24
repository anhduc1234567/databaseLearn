/*UPDATE [Database.][schema.]table_name
SET 
    column1 = value1, column2 = value2, columnk = valuek...
[WHERE condition]*/
/*
UPDATE 
	Students
SET Gpa = Gpa + 0.1
WHERE 
	Address = N'Hà Nội' AND Gpa < 3.9*/
--Cập nhật địa chỉ cho sinh viên mã ‘B25DCCN120’ thành ‘Đà Nẵng’
/*UPDATE Students
SET Address = N'Đà Nẵng'
WHERE StudentId = 'B25DCCN120'*/
--1.Cộng 0.2 điểm cho các sinh viên sinh vào tháng chẵn.
/*UPDATE 
	Students
SET Gpa = Gpa + 0.2
WHERE 
	MONTH(BirthDate) % 2 = 0
*/
--2.