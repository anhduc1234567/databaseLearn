--Toán tử EXISTS là một toán tử logic cho phép ta kiểm tra xem một câu truy vấn con có trả về bất kỳ một hàng dữ liệu nào không.
--EXISTS(subquery)
--1.Từ bảng Staffs, hãy cho biết tên các nhân viên làm việc tại Hà Nội.
/*SELECT sf.FirstName + ' ' + sf.LastName AS FullName,sf.StoreId
FROM Staffs sf
WHERE 
	EXISTS (
		SELECT s.StoreId FROM Stores s WHERE s.City = N'Hà Nội' AND s.StoreId = sf.StoreId
	)*/
--2.Từ bảng Stores, hãy cho biết các cửa hàng có địa chỉ ở quận Cầu Giấy hoặc Nam Từ Liêm hoặc Quận 6.
/*SELECT s.StoreName,s.District
FROM Stores s
WHERE 
	EXISTS (
		SELECT StoreId FROM Stores WHERE (District = N'Cầu Giấy' OR 
			District = N'Nam Từ Liêm' OR
			District = N'QUẬN 6') AND StoreId = s.StoreId
	)*/
--3.Từ bảng Subjects, Registers, hãy cho biết những môn học nào có số lượng sinh viên đăng ký > 2.
/*SELECT DISTINCT sj.Name,sj.SubjectId
FROM
	Subjects sj,
	Registers r
WHERE 
	sj.SubjectId = r.SubjectId AND
	EXISTS (
	SELECT COUNT(sj2.SubjectId) AS Num
	FROM 
		Subjects sj2,
		Registers r
	WHERE 
		sj2.SubjectId = r.SubjectId AND
		sj.SubjectId = sj2.SubjectId
	GROUP BY sj2.SubjectId
	HAVING COUNT(sj2.SubjectId) >2
	)*/
--4.Từ bảng Students, Registers, Subjects, hãy cho biết những sinh viên nào đăng ký từ 2 môn học
--trở lên và cho biết đó là những môn học nào
/*SELECT s.StudentId,s.FirstName,s.LastName,s.Major,sj.SubjectId,sj.Name
FROM Students s
	INNER JOIN Registers r
	ON s.StudentId = r.StudentId
	INNER JOIN Subjects sj
	ON sj.SubjectId = r.SubjectId
WHERE EXISTS(
		SELECT COUNT(s2.StudentId) 
		FROM Students s2
			INNER JOIN Registers r2 
			ON r2.StudentId =s2.StudentId
		WHERE s2.StudentId = s.StudentId

		GROUP BY s2.StudentId
		HAVING  COUNT(s2.StudentId) > 1
			
	)
ORDER BY s.StudentId*/
--5.Từ bảng Staffs và Stores hãy cho biết tên cửa hàng, tên quản lý và số 
--lượng nhân viên dưới quyền của quản lý đó nếu người đó quản lý từ 3 nhân viên trở lên.
SELECT s.StoreName,sf.FirstName,sf.LastName, COUNT(sf.StaffId) AS NumStaffs
FROM 
	Staffs sf
	INNER JOIN Staffs sf2
	ON sf.StaffId =sf2.ManagerId,
	Stores s
	--INNER JOIN Stores s
	--ON s.StoreId = sf2.StoreId
WHERE s.StoreId = sf.StoreId
GROUP BY s.StoreName,sf.FirstName,sf.LastName

HAVING 
	COUNT(sf.StaffId) > 2
ORDER BY  COUNT(sf.StaffId)
