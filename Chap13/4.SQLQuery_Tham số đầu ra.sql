--parameter_name data_type OUTPUT tham số đầu ra
--VD1: Hãy cho biết sinh viên nào có điểm cao nhất học ngành CNTT.
--Tạo sp
/*CREATE PROC nsp_studentmaxgpa @maxGpa AS FLOAT OUT 
AS BEGIN
	SELECT @maxGpa = MAX(Gpa) FROM StudentS
	SELECT * FROM Students WHERE Gpa = @maxGpa
	
	--SELECT @maxGpa = MAX(Gpa) FROM Students
END*/
--sử dụng sp
/*DECLARE @maxGpa FLOAT 
EXEC nsp_studentmaxgpa @maxGpa = @maxGpa OUT
SELECT @maxGpa*/
--VD2:Hãy cho biết tên người quản lý và cửa hàng nơi làm việc của nhân viên mã X cho trước.
/*CREATE OR ALTER PROC nsp_Staff_manager (
	@staffId INT,
	@managerName NVARCHAR(50) OUT,
	@storeName NVARCHAR(255) OUT)
AS
	BEGIN 
		SELECT
			@managerName = sf2.FirstName,
			@storeName = s.StoreName
		FROM 
			Staffs sf1
			INNER JOIN Staffs sf2
			ON sf1.ManagerId = sf2.StaffId  AND sf1.StaffId > sf2.StaffId
			INNER JOIN Stores s
			ON s.StoreId = sf1.StoreId
		WHERE sf1.StaffId = @staffId
	END
	*/
/*DECLARE @staffId INT
SET @staffId = 6
DECLARE @managerName NVARCHAR(50)
DECLARE @storeName NVARCHAR(255) 

EXEC nsp_Staff_manager 
	@staffId = @staffId,
	@managerName = @managerName OUT,
	@storeName = @storeName OUT
SELECT @managerName,@storeName */
--VD4 Hãy cho biết số lượng nhân viên dưới quyền mà quản lý X đang quản lý.
/*CREATE OR ALTER PROC usp_CountManagedStaffs(
	@staffId INT,
	@numberOfStaff INT OUT
) AS BEGIN
	SELECT
			 @numberOfStaff = COUNT(sf1.ManagerId)
		FROM 
			Staffs sf1
			INNER JOIN Staffs sf2
			ON sf1.ManagerId = sf2.StaffId  AND sf1.StaffId > sf2.StaffId
		WHERE sf2.StaffId = @staffId
		GROUP BY sf1.ManagerId,sf2.FirstName
		
END*/
/*
DECLARE @staffId INT
SET @staffId = 15
DECLARE	@numberOfStaff INT 
EXEC usp_CountManagedStaffs @staffId = @staffId ,@numberOfStaff =@numberOfStaff OUT
SELECT @numberOfStaff*/
--VD5:Hãy cho biết họ và tên, cửa hàng đang làm việc, số lượng nhân viên họ đang quản lý của người quản lý có nhiều nhân viên dưới quyền nhất?
/*CREATE OR ALTER PROC usp_CountManagedStaffs(
	@numberOfStaff INT OUT,
	@fullname NVARCHAR(200) OUT,
	@storename NVARCHAR (50) OUT
) AS BEGIN
		SELECT TOP 1
			 @numberOfStaff = COUNT(sf1.ManagerId),
			 @fullname = sf2.FirstName + ' ' + sf2.LastName ,
			 @storename = s.StoreName
			 FROM 
			Staffs sf1
			INNER JOIN Staffs sf2
			ON sf1.ManagerId = sf2.StaffId  AND sf1.StaffId > sf2.StaffId
			INNER JOIN Stores s
			ON s.StoreId = sf2.StoreId
		--WHERE sf2.StaffId = @staffId 
		GROUP BY sf1.ManagerId,sf2.FirstName,sf2.LastName,s.StoreName
		ORDER BY COUNT(sf1.ManagerId) DESC
END*/
DECLARE	@numberOfStaff INT 
DECLARE	@fullname NVARCHAR(200) 
DECLARE	@storename NVARCHAR (50) 
EXEC usp_CountManagedStaffs 
	@numberOfStaff  =@numberOfStaff  OUT,
	@fullname = @fullname OUT,
	@storename = @storename  OUT
SELECT @numberOfStaff,@fullname,@storename