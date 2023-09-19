/*
Hàm SUM() là một hàm tổng hợp sử dụng để tính tổng các giá trị trong một cột được chỉ định.
Cú pháp của hàm SUM():
SUM([ALL | DISTINCT] expression)
*/
--Tính tổng số tín chỉ các môn học có trong bảng Subject.
--SELECT SUM(Credit) FROM Subjects
--Tính tổng số sinh viên đăng ký các môn học 4 tín chỉ.
/*SELECT SUM(re.Num)
FROM(
SELECT sj.Name,COUNT(r.SubjectId)  AS NUM
FROM
	Subjects  sj INNER JOIN 
	Registers r
	ON sj.SubjectId = r.SubjectId
WHERE sj.Credit = 4
GROUP BY sj.Name) AS re*/
SELECT r.StudentId, COUNT(r.SubjectId),SUM(sj.NumOfLesson)  AS NUM
FROM
	Subjects  sj INNER JOIN 
	Registers r
	ON sj.SubjectId = r.SubjectId

GROUP BY r.StudentId
