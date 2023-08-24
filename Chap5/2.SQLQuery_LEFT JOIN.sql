/*SELECT
    columns
FROM
    table1
    LEFT JOIN table2
    ON join_predicate;*/
--VD1: Hãy cho biết những sinh viên nào đăng ký ít nhất một môn học:
/*SELECT DISTINCT s.*,r.StudentId
FROM 
	Students s
	LEFT JOIN Registers r
	ON  s.StudentId = r.StudentId
WHERE r.StudentId IS NOT NULL*/
--VD2: Hãy cho biết thông tin sinh viên mã B225DCCN101 và thông tin các môn học sinh viên đó đăng ký xếp theo thứ tự đăng ký từ sớm đến muộn.
/*SELECT DISTINCT s.StudentId,sj.* 
FROM 
	Students s
	LEFT JOIN Registers r
	ON r.StudentId = s.StudentId
	LEFT JOIN Subjects sj
	ON sj.SubjectId = r.SubjectId
WHERE
	s.StudentId = 'B25DCCN101' AND r.StudentId IS NOT NULL*/
--1.Hãy cho biết thông tin các môn học không có sinh viên nào đăng ký
/*SELECT sj.*
FROM 
	Subjects sj
	LEFT JOIN Registers r
	ON sj.SubjectId = r.SubjectId
WHERE 
	r.SubjectId IS NULL*/
--2Hãy cho biết số lượng sinh viên đăng ký của từng môn học. Kết quả sắp xếp giảm dần theo số lượng sinh viên đăng ký.
/*SELECT sj.*,COUNT(sj.SubjectId) AS NumSubjects
FROM 
	Subjects sj
	LEFT JOIN Registers r
	ON sj.SubjectId = r.SubjectId
WHERE 
	r.SubjectId IS NOT NULL
GROUP BY 
	sj.Name,sj.Credit,sj.NumOfLesson,sj.Type,sj.SubjectId
*/
--3.Hãy cho biết danh sách các sinh viên đăng ký môn học SUBJ1001.
/*SELECT DISTINCT s.StudentId,sj.* 
FROM 
	Students s
	LEFT JOIN Registers r
	ON r.StudentId = s.StudentId
	LEFT JOIN Subjects sj
	ON sj.SubjectId = r.SubjectId
WHERE
	sj.SubjectId = 'SUBJ1001' AND r.StudentId IS NOT NULL*/
--4 Hãy cho biết mỗi sinh viên đăng ký bao nhiêu môn học. Sắp xếp giảm dần theo số lượng đăng ký.
SELECT DISTINCT s.StudentId,s.FirstName,s.LastName,COUNT(s.StudentId) AS NumReg
FROM 
	Students s
	LEFT JOIN Registers r
	ON  s.StudentId = r.StudentId
WHERE r.StudentId IS NOT NULL
GROUP BY
	s.StudentId,s.FirstName,s.LastName
ORDER BY NumReg DESC
