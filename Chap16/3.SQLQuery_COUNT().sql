-- hàm 
/*
Hàm COUNT() là một hàm tổng hợp sử dụng để đếm số phần tử trong một tập hợp. Cụ thể là đếm số giá trị trong một cột nào đó.
Cú pháp của hàm COUNT():
COUNT([ALL | DISTINCT] expression)*/
--vd1:Hãy cho biết có bao nhiêu bản ghi trong bảng Registers?
--SELECT COUNT(*) FROM Registers
--vd2Hãy cho biết có bao nhiêu môn học có 4 tín chỉ trong bảng Subjects.
--SELECT COUNT(*) FROM Subjects WHERE Credit = 4
--VD3:Hãy cho biết có bao nhiêu sinh viên đăng ký môn học có 3 tín chỉ?
/*SELECT sj.SubjectId,COUNT(r.SubjectId) AS NumOfStudentsReg
FROM 
 Subjects sj
 INNER JOIN Registers r
 ON sj.SubjectId = r.SubjectId
 WHERE sj.Credit = 3
 GROUP BY sj.SubjectId,r.SubjectId*/
 --vd4: Hãy cho biết sinh viên mã X đăng ký bao nhiêu môn học?
 SELECT COUNT(StudentId),StudentId
 FROM Registers

 GROUP BY StudentId