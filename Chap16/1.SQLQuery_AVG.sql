/*Hàm AVG() dùng để tìm giá trị trung bình của một nhóm giá trị.
Ví dụ tính tuổi trung bình của các nhân viên trong công ty. Tính lương trung bình của các nhân viên trong một tổ chức…
Cú pháp của hàm AVG():
AVG([ALL | DISTINCT] expression) 
DISTINCT chỉ dẫn cho hàm AVG() tính toán chỉ trên các giá trị duy nhất.
*/
--SELECT AVG(Gpa) from Students WHERE Major = N'httt'
--VD Hãy cho biết số môn học trung bình mà 1 sinh viên đăng ký. Chỉ xét các sinh viên đã đăng ký.
SELECT AVG(re.num)
FROM
(
SELECT COUNT(r.StudentId) AS num

FROM Students s
	INNER JOIN Registers r
	ON s.StudentId = r.StudentId
GROUP BY S.StudentId,r.StudentId) AS re