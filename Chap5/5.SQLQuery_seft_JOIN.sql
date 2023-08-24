-- SEFT JOIN 
/*
SELECT 
    select_list
FROM
    T t1
    [INNER|LEFT] JOIN T t2 
    ON join_predicate;*/
--1.Từ bảng Subjects, hãy cho biết tên các môn học cùng số tín chỉ.
/*SELECT sj1.Credit,sj1.Name AS subject1  ,sj2.Name AS subject2
FROM
	Subjects sj1
	INNER JOIN Subjects sj2
	ON sj1.Credit =sj2.Credit AND sj1.SubjectId > sj2.SubjectId
ORDER BY sj1.Credit*/

--2.Từ bảng Students hãy cho biết tên các sinh viên có cùng tháng sinh.
/*SELECT DATEPART(MONTH,s1.BirthDate) AS Tháng , s1.FirstName AS Student1, s2.FirstName AS Student2
FROM
	Students s1
	INNER JOIN Students s2
	ON DATEPART(MONTH,s1.BirthDate) = DATEPART(MONTH,s2.BirthDate) AND s1.StudentId < s2.StudentId
ORDER BY Tháng

*/
--3.Từ bảng Stores hãy cho biết các cửa hàng ở cùng thành phố
/*SELECT s1.City, s1.StoreName,s2.StoreName
FROM 
	Stores s1
	INNER JOIN Stores s2
	ON s1.StoreId > s2.StoreId AND s1.City = s2.City*/
--4.Từ bảng Staffs và Stores hãy cho biết tên các nhân viên làm cùng cửa hàng.
SELECT s.StoreId,s.StoreName,sf1.FirstName,sf2.FirstName
FROM 
	Stores s
	INNER JOIN Staffs sf1
	ON s.StoreId = sf1.StoreId
	INNER JOIN Staffs sf2
	ON sf1.StoreId = sf2.StoreId AND sf1.StaffId > sf2.StaffId

