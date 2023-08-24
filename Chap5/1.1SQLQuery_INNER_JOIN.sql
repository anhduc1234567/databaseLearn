-- Bài tập INNER JOIN
--1. Hãy cho biết thông tin các môn học trong bảng Subjects có sinh viên đăng ký. Không xét trạng thái đăng ký.
/*SELECT DISTINCT Subjects.* 
FROM 
	Subjects
	INNER JOIN Registers
	ON Subjects.SubjectId = Registers.SubjectId*/
--2. Hãy cho biết thông tin những sinh viên đăng ký môn học C++. Không xét trạng thái đăng ký
/*SELECT s.*
FROM
	Students s
	INNER JOIN Registers r
	ON s.StudentId = r.StudentId
	INNER JOIN Subjects sj
	ON sj.SubjectId = r.SubjectId
WHERE
	sj.Name = 'C++'
ORDER BY s.StudentId
*/
--3 Hãy cho biết mỗi sinh viên đăng ký bao nhiêu môn học. Không xét trạng thái đăng ký.
/*SELECT s.StudentId,s.FirstName,s.LastName,s.MidName,COUNT(r.SubjectId) AS NumREGISTER
FROM
	Students s
	INNER JOIN Registers r
	ON s.StudentId = r.StudentId
GROUP BY 
	s.StudentId,s.FirstName,s.LastName,s.MidName
ORDER BY
	NumREGISTER DESC*/
--4 Hãy cho biết mỗi môn học có bao nhiêu sinh viên đăng ký. Không xét trạng thái đăng ký.
/*SELECT sj.Name,sj.SubjectId,COUNT(r.StudentId) AS NumREGISTER
FROM
	Subjects sj
	INNER JOIN Registers r
	ON sj.SubjectId = r.SubjectId
GROUP BY 
	 sj.Name,sj.SubjectId
ORDER BY
	NumREGISTER DESC
	*/
--5 Hãy cho biết thông tin các sinh viên trong bảng Students đăng ký nhiều môn học nhất. Không xét trạng thái đăng ký.
/*SELECT TOP 1 WITH TIES s.StudentId,s.FirstName,s.LastName,s.MidName,COUNT(r.SubjectId) AS NumREGISTER
FROM
	Students s
	INNER JOIN Registers r	
	ON s.StudentId = r.StudentId
GROUP BY 
	s.StudentId,s.FirstName,s.LastName,s.MidName
ORDER BY
	NumREGISTER DESC*/
--6.Hãy cho biết thông tin các môn học trong bảng Subjects được đăng ký nhiều nhất. Không xét trạng thái đăng ký.
/*SELECT sj.Name,sj.SubjectId,COUNT(r.StudentId) AS NumREGISTER
FROM
	Subjects sj
	INNER JOIN Registers r
	ON sj.SubjectId = r.SubjectId
GROUP BY 
	 sj.Name,sj.SubjectId
HAVING 
	COUNT(r.StudentId) =( -- SO SÁNH BẰNG MAX
	SELECT MAX(rs.NumOfRegister)  -- CHỌN MAX TRONG ĐÓ
	FROM(
		--ĐẾM SỐ LƯỢNG TỪNG MÔN
		SELECT COUNT(r.SubjectId) AS NumOfRegister
		FROM 
		Subjects sj
		INNER JOIN Registers r
		ON r.SubjectId = sj.SubjectId
		GROUP BY
			sj.SubjectId)
			rs)*/
--7.Hãy cho biết thông tin các sinh viên đăng ký môn học nhiều thứ hai. Không xét trạng thái đăng ký**
SELECT  s.StudentId,s.FirstName,s.LastName,s.MidName,COUNT(r.SubjectId) AS NumREGISTER
FROM
	Students s
	INNER JOIN Registers r	
	ON s.StudentId = r.StudentId
GROUP BY 
	s.StudentId,s.FirstName,s.LastName,s.MidName
HAVING 
	COUNT(r.SubjectId) =( SELECT MIN(rs.top2)
		FROM (
		SELECT DISTINCT TOP 2 COUNT(s.StudentId) AS top2 FROM
		Students s
		INNER JOIN Registers r	
		ON s.StudentId = r.StudentId
		GROUP BY s.StudentId
		ORDER BY top2 DESC
		) rs
	)