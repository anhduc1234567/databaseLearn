/*
Sử dụng câu lệnh SELECT TOP để giới hạn số bản ghi trả về bởi một câu truy vấn.
SELECT TOP có thể giới hạn số dòng kết quả theo chính xác 1 con số được chỉ định hoặc theo phần trăm kết quả trả về.
Bời vì thứ tự các dòng kết quả trong bảng là không xác định nên SELECT TOP 
luôn đi kèm với mệnh đề ORDER BY. Do đó kết quả có thể được giới hạn ở N dòng đầu tiên sau sắp xếp.
SELECT TOP(expression) [PERCENT]
    [WITH TIES]
FROM
    tables
ORDER BY
    columns
*/
-- top 3 sv có đtb cao nhất
/*
SELECT TOP 3 *
FROM 
Student
ORDER BY
Gpa DESC
*/
--Cho biết top 5% sinh viên có điểm TB thấp nhất.
/*SELECT TOP 3 PERCENT WITH TIES *

FROM Student

ORDER BY Gpa DESC*/
--Cho biết top 10% sinh viên có ngày sinh nhỏ nhất
/*SELECT TOP 10 PERCENT 
	Id,
	FullName,
	DAY(BirthDate) AS BirthDay
FROM Student
ORDER BY BirthDate DESC*/
--Top 5 sih viên có tên dài nhất:
SELECT TOP 5 WITH TIES *
FROM 
	Student
ORDER BY
	LEN(FullName) DESC
--TOP 20 % MÔN HỌC CÓ SỐ TÍN NHIỀU NHẤT
SELECT TOP 20 PERCENT WITH TIES *
FROM 
	Subject
ORDER BY Credit DESC