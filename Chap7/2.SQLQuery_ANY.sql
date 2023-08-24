-- toán tử ANY
--1.Hãy cho biết các tháng sinh có từ 2 sinh viên trở lên. Kết quả sắp xếp giảm dần theo số lượng sinh viên.
/*SELECT MONTH(BirthDate) AS month,COUNT(StudentId) AS Num
FROM Students
WHERE MONTH(BirthDate) = ANY(
		SELECT 
			 MONTH(BirthDate) AS Month
		FROM 
			Students
		--WHERE COUNT(StudentId) > 1
		GROUP BY MONTH(BirthDate)
		HAVING
			COUNT(StudentId) > 1)
GROUP BY MONTH(BirthDate) 
ORDER BY  Num DESC*/
--2.Hãy cho biết thông tin các sinh viên đăng ký từ 2 môn học trở lên. Kết quả sắp xếp giảm dần theo số lượng môn học đã đăng ký
/*SELECT s.StudentId,s.FirstName,s.BirthDate ,COUNT(r.StudentId) AS NumOfRegister
FROM Students s
	INNER JOIN Registers r
	ON s.StudentId = r.StudentId
GROUP BY s.StudentId,s.FirstName,s.BirthDate 
HAVING
	COUNT(r.StudentId) = ANY(
	SELECT COUNT(StudentId)
	FROM Registers
	GROUP BY StudentId
	HAVING COUNT(StudentId) > 1 
	)
ORDER BY COUNT(r.StudentId)
*/
--3.Hãy cho biết thông tin các sinh viên chỉ đăng ký 1 môn học.
/*SELECT s.StudentId,s.FirstName,s.BirthDate ,COUNT(r.StudentId) AS NumOfRegister
FROM Students s
	INNER JOIN Registers r
	ON s.StudentId = r.StudentId
GROUP BY s.StudentId,s.FirstName,s.BirthDate 
HAVING
	COUNT(r.StudentId) = ANY(
	SELECT COUNT(StudentId)
	FROM Registers
	GROUP BY StudentId
	HAVING COUNT(StudentId) = 1 
	)
ORDER BY COUNT(r.StudentId)*/
--4.Hãy cho biết thông tin các sinh viên không đăng ký môn học.
/*SELECT s.StudentId,s.FirstName,s.BirthDate
FROM Students s
WHERE 
	s.StudentId NOT IN (SELECT StudentId FROM Registers)
	*/
--5.Hãy cho biết thông tin các nhân viên làm cùng cửa hàng có mã cửa hàng là 5.
/*SELECT * 
FROM Staffs
WHERE StoreId = ANY (
		SELECT StoreId FROM Stores WHERE StoreId = 5
	)*/
--6.Hãy cho biết mã, họ, tên các nhân viên quản lý, tên cửa hàng họ làm việc?
/*SELECT sf.StaffId,sf.FirstName,s.StoreName
FROM 
	Staffs sf
	INNER JOIN Stores s
	ON s.StoreId = sf.StoreId
WHERE sf.StaffId = ANY (
		SELECT StaffId FROM Staffs WHERE ManagerId IS NULL
	)*/
--7.Hãy cho biết mã, họ, tên các nhân viên quản lý, tên cửa hàng họ làm việc, 
--số lượng nhân viên họ đang quản lý? Sắp xếp kết quả theo số lượng nhân viên người đó quản lý giảm dần.
SELECT sf.StaffId,sf.FirstName,s.StoreName,COUNT(sf2.StaffId) AS Num
FROM 
	Staffs sf
	INNER JOIN Staffs sf2
	ON sf2.ManagerId = sf.StaffId 
	INNER JOIN Stores s
	ON s.StoreId = sf.StoreId
GROUP BY  sf.StaffId,sf.FirstName,s.StoreName
