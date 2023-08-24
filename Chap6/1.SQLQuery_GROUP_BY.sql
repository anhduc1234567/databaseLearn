-- GROUP BY
--1.Hãy cho biết điểm TB cộng của các sinh viên tổng hợp theo các tháng sinh của sinh viên trong danh sách.
/*SELECT MONTH(s.BirthDate) AS Month, AVG(Gpa) AS AverageGPA
FROM	
	Students s
GROUP BY
MONTH(s.BirthDate)*/
--2.Hãy cho biết số lượng môn học ở mỗi giá trị tín chỉ là bao nhiêu?
/*SELECT Credit,COUNT(SubjectId) AS Num
FROM Subjects
GROUP BY
Credit*/
--3.Hãy cho biết số lượng sinh viên đăng ký theo từng môn học.
SELECT sj.Name,COUNT(sj.Name) AS Num
FROM Subjects sj
	 INNER JOIN Registers r
	 ON sj.SubjectId = r.SubjectId
GROUP BY
	sj.Name
ORDER BY COUNT(sj.Name)

