--FULL JOIN
--1.Hãy cho biết tên, mã các môn học không có sinh viên đăng ký và tên, mã các sinh viên không đăng ký môn học.
/*SELECT DISTINCT sj.Name,sj.SubjectId,s.FirstName,s.StudentId
	FROM 
		Subjects sj 
		FULL JOIN Registers r 
		ON r.SubjectId = sj.SubjectId
		FULL JOIN Students s
		ON s.StudentId = r.StudentId
WHERE
	r.StudentId IS NULL*/

--2Hãy cho biết mã, tên sinh viên, mã, tên môn học, thời gian đăng ký của các môn học sinh viên đã đăng ký.
SELECT s.StudentId,s.FirstName,sj.SubjectId,sj.Name,r.RegisterTime
FROM
	Students s
	FULL JOIN Registers r
	ON s.StudentId = r.StudentId
	FULL JOIN Subjects sj
	ON sj.SubjectId = r.SubjectId
WHERE r.RegisterTime IS NOT NULL

ORDER BY r.RegisterTime ASC

