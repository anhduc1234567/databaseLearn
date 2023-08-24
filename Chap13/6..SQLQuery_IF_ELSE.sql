--lệnh IF ELSE
/*IF condition
BEGIN
    do_something 
END
ELSE
BEGIN
    do_other_thing
END*/
--vd1:Hãy cho biết có bao nhiêu sinh viên có điểm Gpa >= 3.6. Nếu không có hiển thị ‘Không có sinh viên nào thỏa mãn’.
/*BEGIN
	DECLARE @numofstudentgpa INT
	SELECT @numofstudentgpa =  COUNT(*)
	FROM Students
	WHERE Gpa >= 3.6

	IF @numofstudentgpa = 0
	BEGIN
	PRINT N'Không có sinh viên nào khỏa mãn'
	END
	ELSE 
	BEGIN
	PRINT N'Có ' + STR(@numofstudentgpa,2) +N' sinh viên'
	END
END*/
--vd2:Hãy cho biết có bao nhiêu sinh viên CNTT học giỏi(Gpa >= 3.2). Đưa ra kết luận tương ứng.
/*BEGIN
	DECLARE @numofitstudent INT 
	DECLARE @major NVARCHAR(5) = 'CNTT'
	SELECT @numofitstudent = COUNT(*)
	FROM Students
	WHERE
		Gpa >= 3.2 AND Major = @major
	IF @numofitstudent = 0
	BEGIN
	PRINT 'KHONG CO HỌC SINH NÀO'
	END
	ELSE 
	BEGIN
	PRINT N'CÓ '+ STR(@numofitstudent,2)
	END
END
*/
--VD3:Hãy cho biết có bao nhiêu cửa hàng công nghệ tại quận Nam Từ Liêm?
/*BEGIN
	DECLARE @numofstore INT
	SELECT @numofstore = COUNT(*)
	FROM Stores
	WHERE
	District = N'Nam Từ Liêm'
	IF @numofstore = 0
	BEGIN PRINT '0 Co cua hang nao ca'
	END
	ELSE
	BEGIN PRINT STR(@numofstore,2) END

END*/
--VD 2:Hãy cho biết có bao nhiêu nhân viên làm việc tại cửa hàng mã X?
/*BEGIN
	DECLARE @numofstaff INT
	DECLARE @storeid INT = 4
	SELECT @numofstaff = COUNT(s.StoreId)

	FROM Stores s
	INNER JOIN Staffs sf
	ON s.StoreId = sf.StoreId
	WHERE s.StoreId = @storeid
	GROUP BY  s.StoreId,s.StoreName

	IF @numofstaff > 0
	BEGIN 
	PRINT 'Có ' + STR(@numofstaff,2) + N' làm việc tại cửa hàng'
	END
	ELSE 
	BEGIN PRINT '0 co nhân viên nào' END
END
*/
--VD5 : Hãy cho biết nhân viên quản lý mã X đang quản lý bao nhiêu nhân viên
BEGIN
	DECLARE @numofstaff INT
	DECLARE @managerId INT = 9

	SELECT @numofstaff = COUNT(sf.StaffId)
	FROM
		Staffs sf
		INNER JOIN Staffs sf2
		ON sf.ManagerId = sf2.StaffId AND sf.StaffId > sf2.StaffId
	WHERE sf2.StaffId = @managerId
	GROUP BY sf2.FirstName
	IF @numofstaff > 0
	BEGIN PRINT N'Quản lý này có' + STR(@numofstaff,2)+ N' nhân viên'
	END
END