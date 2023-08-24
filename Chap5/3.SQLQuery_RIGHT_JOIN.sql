/*SELECT
    columns
FROM
    table1
    RIGHT JOIN table2
    ON join_predicate;*/
--VD1: Hãy cho biết các môn học không có sinh viên nào đăng ký.
/*SELECT DISTINCT
	sj.*
FROM
	Subjects sj
	RIGHT JOIN Registers r
	ON r.SubjectId = sj.SubjectId*/
--1. Hãy cho biết những sinh viên nào không đăng ký môn học
/*SELECT DISTINCT
	s.*
FROM
	Registers r
	RIGHT JOIN Students s
	ON r.StudentId = s.StudentId
WHERE r.StudentId IS NULL*/
--2.Hãy cho biết những sinh viên nào đăng ký từ 2 môn học trở lên
/*SELECT DISTINCT
	s.StudentId,s.FirstName,s.LastName,s.MidName,s.Major, COUNT(s.StudentId) AS NumReg
FROM
	Registers r
	RIGHT JOIN Students s
	ON r.StudentId = s.StudentId

GROUP BY s.StudentId,s.FirstName,s.LastName,s.MidName,s.Major,r.StudentId

HAVING r.StudentId IS NOT NULL AND  COUNT(s.StudentId) >= 2

ORDER BY NumReg*/
--3.Hãy cho biết các môn học nào có từ 2 sinh viên đăng ký trở lên.
/*SELECT DISTINCT
	sj.Name, COUNT(r.SubjectId) AS NumReg
FROM
	Registers r
	RIGHT JOIN Subjects sj
	ON r.SubjectId = sj.SubjectId

GROUP BY sj.Name,r.SubjectId

HAVING r.SubjectId IS NOT NULL AND  COUNT(r.SubjectId) >= 2

ORDER BY NumReg
*/
--4.Hãy cho biết sinh viên nào đăng ký môn học sớm nhất?
