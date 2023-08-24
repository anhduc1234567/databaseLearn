--expression comparison_operator ALL(subquery)
--1.Hãy cho biết mã, họ và tên các sinh viên có ngày sinh không trùng với ngày sinh của sinh viên nào. Chỉ xét ngày, không xét tháng, năm.
/*SELECT StudentId,FirstName,LastName
FROM Students
WHERE 
	DAY(BirthDate) <> ALL(
		SELECT DAY(BirthDate)
		FROM Students
		GROUP BY DAY(BirthDate)
		HAVING COUNT(DAY(BirthDate)) > 1
	)*/
--2.Hãy cho biết mã, họ, tên các nhân viên có họ không trùng với họ của các nhân viên khác. Sắp xếp kết quả tăng dần theo tên a-z.
SELECT StaffId,FirstName,LastName
FROM Staffs
WHERE
	LastName <> ALL (
		SELECT DISTINCT sf1.LastName
		FROM 
		Staffs sf1
		INNER JOIN Staffs sf2
		ON sf1.StaffId > sf2.StaffId
		WHERE
			sf1.LastName = sf2.LastName
	)
--3.Hãy cho biết thông tin các cửa hàng có địa chỉ quận không trùng với địa chỉ quận của các cửa hàng khác
SELECT *
FROM Stores
WHERE District <> ALL (
	SELECT s1.District
	FROM
	Stores s1 INNER JOIN Stores s2 ON s1.StoreId > s2.StoreId AND s1.District = s2.District
)