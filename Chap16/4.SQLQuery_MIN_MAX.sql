/*
Hàm MAX() là một hàm tổng hợp dùng để tìm và trả về giá trị lớn nhất trong một tập(cột) nào đó.
Cú pháp của hàm MAX():
MAX(expression)*/
--Tìm các môn học có tên dài nhất.
/*SELECT *
FROM Subjects
WHERE
	LEN(Name) = (
		SELECT MAX(LEN(Name))
		FROM Subjects
	)*/
--Tìm các môn học có số sinh viên đăng ký nhiều nhất.


SELECT sj.SubjectId,COUNT(r.SubjectId) AS NumOfStudentsReg
FROM 
 Subjects sj
 INNER JOIN Registers r
 ON sj.SubjectId = r.SubjectId
 GROUP BY sj.SubjectId,r.SubjectId
 HAVING 
	COUNT(r.SubjectId) = (SELECT  MAX(re.NumOfStudentsReg) 
	FROM(
		SELECT COUNT(r.SubjectId) AS NumOfStudentsReg
		FROM 
		 Subjects sj
		 INNER JOIN Registers r
		 ON sj.SubjectId = r.SubjectId
		 GROUP BY sj.SubjectId,r.SubjectId
		) AS re)
