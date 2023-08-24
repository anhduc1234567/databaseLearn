-- mệnh đề inner Join
/*
SELECT
    columns
FROM
    table1
    INNER JOIN table2
    ON join_predicate;
*/
--VD1:Hãy cho biết mã, họ, tên các sinh viên đã đăng ký ít nhất một môn học. Kết quả không được phép trùng lặp.
SELECT DISTINCT
	s.Id,s.LastName,s.FirstName ,COUNT(r.SubjectId) AS NumRegister
FROM Student s 
	INNER JOIN Register r
	ON s.Id = r.StudentId
GROUP BY
s.Id,s.LastName,s.FirstName 
--VD2:Hãy cho biết mã, tên các sinh viên không đăng ký bất kỳ môn học nào. Kết quả không hiển thị trùng lặp.
/*SELECT DISTINCT
	s.Id,s.LastName,s.FirstName 
FROM Student s
WHERE s.Id NOT IN (SELECT DISTINCT
	s.Id
FROM Student s 
	INNER JOIN Register r
	ON s.Id = r.StudentId)*/
--VD3:Hãy cho biết sinh viên Trần Dũng mã B25DCCN101 đăng ký những môn học nào.
/*SELECT DISTINCT s.Id,sj.*
	FROM 
	Student s
	INNER JOIN Register r
	ON r.StudentId = s.Id 
	INNER JOIN Subject sj
	ON r.SubjectId = sj.Id
WHERE  s.Id = 'B25DCCN101'*/