--HAVING SAU GROUP BY
--1. Hãy cho biết điểm TB cộng của các sinh viên tổng hợp theo các tháng sinh từ 6-12 của sinh viên trong danh sách.
/*SELECT AVG(Gpa) AS AverageGPA,MONTH(BirthDate) AS Month
FROM Students
GROUP BY
MONTH(BirthDate)
HAVING MONTH(BirthDate) >= 6 */
--2.Hãy cho biết số lượng sinh viên đăng ký theo từng môn học. Trong đó tên môn học phải có độ dài từ 5 kí tự trở lên.
/*SELECT sj.SubjectId, COUNT(sj.SubjectId) AS Num
FROM
	Subjects sj,
	Registers r
GROUP BY
	sj.SubjectId,sj.Name,r.SubjectId
HAVING 
	sj.SubjectId = r.SubjectId AND LEN(sj.Name) >= 5*/
--3.Hãy cho biết số lượng môn học mà mỗi sinh viên đăng ký. Chỉ xét các sinh viên đăng ký từ 3 môn học trở lên.
/*SELECT s.StudentId,s.FirstName,COUNT(s.StudentId) AS Num
FROM
	Students s,
	Registers r 
WHERE
	s.StudentId = r.StudentId
GROUP BY
	s.StudentId,s.FirstName
HAVING 
	COUNT(s.StudentId) >= 3
*/
--4.Hãy cho biết thông tin các môn học trong bảng Subjects có sinh viên đăng ký.
/*SELECT sj.SubjectId,sj.Name,sj.Credit, COUNT(sj.SubjectId) AS Num
FROM
	Subjects sj
	INNER JOIN
	Registers r
	ON sj.SubjectId = r.SubjectId
GROUP BY
	sj.SubjectId,sj.Name,r.SubjectId,sj.Credit*/
--5. Hãy cho biết thông tin các môn học trong bảng Subjects KHÔNG có sinh viên đăng ký. Không xét trạng thái đăng ký.
/*SELECT sj.SubjectId,sj.Name,sj.Credit, COUNT(sj.SubjectId) AS Num,r.SubjectId
FROM
	Subjects sj
	lEFT JOIN
	Registers r
	ON sj.SubjectId = r.SubjectId
WHERE r.SubjectId IS  NULL
GROUP BY
	sj.SubjectId,sj.Name,r.SubjectId,sj.Credit*/
--6.Hãy cho biết thông tin những sinh viên đăng ký môn học C++
/*SELECT s.StudentId,s.FirstName,sj.Name,r.RegisterTime
FROM
	Students s
	INNER JOIN Registers r
	ON s.StudentId = r.StudentId
	INNER JOIN Subjects sj
	ON sj.SubjectId = r.SubjectId
WHERE 
	sj.Name = 'C++'*/
--7.Hãy cho biết mỗi sinh viên đăng ký bao nhiêu môn học.
/*SELECT s.StudentId, s.FirstName ,COUNT(r.StudentId) AS Num
FROM 
	Students s
	INNER JOIN Registers r
	ON s.StudentId = r.StudentId
GROUP BY
	s.StudentId, s.FirstName
ORDER BY COUNT(r.StudentId) DESC*/
--8.Hãy cho biết thông tin các sinh viên trong bảng Students đăng ký nhiều môn học nhất. 
/*SELECT s.StudentId, s.FirstName ,COUNT(r.StudentId) AS Num
FROM 
	Students s
	INNER JOIN Registers r
	ON s.StudentId = r.StudentId
GROUP BY
	s.StudentId, s.FirstName
HAVING COUNT(r.StudentId) = (SELECT MAX(rs.NumReg) FROM(
		SELECT COUNT(r.StudentId) AS NumReg
		FROM 
		Students s
		INNER JOIN Registers r
		ON s.StudentId = r.StudentId
		GROUP BY
			s.StudentId
		) rs	
		)*/
--9.Hãy cho biết thông tin các môn học trong bảng Subjects được đăng ký nhiều nhất
/*SELECT sj.SubjectId,sj.Name,COUNT(r.SubjectId) AS Num
FROM
	Subjects sj
	INNER JOIN Registers r
	ON sj.SubjectId = r.SubjectId
GROUP BY
	sj.SubjectId,sj.Name
HAVING 
	COUNT(r.SubjectId) = ( SELECT MAX(rs.NumReg) FROM (
		SELECT COUNT(r.SubjectId)AS NumReg  FROM
			Subjects sj
			INNER JOIN Registers r
			ON sj.SubjectId = r.SubjectId
			GROUP BY
			sj.SubjectId
	)rs
	
	)*/
--10.Hãy cho biết thông tin các sinh viên đăng ký môn học nhiều thứ hai.
SELECT s.StudentId, s.FirstName ,COUNT(r.StudentId) AS Num
FROM 
	Students s
	INNER JOIN Registers r
	ON s.StudentId = r.StudentId
GROUP BY
	s.StudentId, s.FirstName
HAVING COUNT(r.StudentId) = (SELECT MIN(rs.NumReg) FROM(
		SELECT DISTINCT TOP 2 COUNT(r.StudentId) AS NumReg
		FROM 
		Students s
		INNER JOIN Registers r
		ON s.StudentId = r.StudentId
		GROUP BY
			s.StudentId
		ORDER BY NumReg DESC
		) rs	
		)
		