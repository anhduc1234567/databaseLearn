/*Toán tử EXCEPT so sánh hai tập kết quả của hai câu truy 
vấn và trả về các dòng duy nhất từ tập kết quả thứ nhất mà không xuất hiện trong tập kết quả thứ hai.
query1 EXCEPT query2
*/
--1.Hãy cho biết các môn học không có sinh viên đăng ký?
/*SELECT *
FROM Subjects
WHERE
	SubjectId IN (
		SELECT SubjectId
		FROM Subjects
		EXCEPT
		SELECT SubjectId
		FROM Registers
	)*/
--2.Hãy cho biết sinh viên nào đã đăng ký nhưng không đăng ký môn học C++?
/*SELECT *
FROM Students
WHERE StudentId IN(
	SELECT StudentId
	FROM Registers
	EXCEPT 
	SELECT r.StudentId
	FROM Registers r
		INNER JOIN Subjects sj
		ON r.SubjectId = sj.SubjectId
	WHERE sj.Name = 'C++'
)*/
--3.Hãy cho biết các khách hàng nào không có cửa hàng công nghệ trong cùng quận?
/*SELECT *
FROM Customers
WHERE District IN (
		SELECT
			c.District
		FROM
			Customers c
		EXCEPT
		SELECT	
			s.District
		FROM
			Stores s
	);*/
--4.Hãy cho biết những sinh viên nào đã đăng ký từ 3 môn học trở lên? Sắp xếp giảm dần theo số lượng môn học đã đăng ký
SELECT s.StudentId,s.FirstName,COUNT(r.StudentId) AS Num
FROM 
	Students s
	INNER JOIN Registers r
	ON s.StudentId = r.StudentId
WHERE
	s.StudentId IN (
		SELECT r.StudentId
		FROM Registers r
		EXCEPT
		SELECT r.StudentId
		FROM Registers r

		GROUP BY r.StudentId
		HAVING COUNT(r.StudentId) < 3
		)
GROUP BY s.StudentId,s.FirstName
ORDER BY COUNT(r.StudentId) DESC