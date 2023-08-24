--DELETE
/*DELETE 
FROM Registers 
	INNER JOIN Subjects
	ON i
DELETE
FROM Subjects
WHERE Credit = 4
DELETE
FROM 
    Students
WHERE 
    StudentId = 'B25DCCN102'*/
--Xóa các sinh viên sinh vào tháng chẵn, ngày chẵn khỏi bảng Students.
DELETE
FROM Students
WHERE 
	MONTH(BirthDate) % 2 = 0 
	