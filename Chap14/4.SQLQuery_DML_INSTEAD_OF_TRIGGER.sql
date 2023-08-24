/*
Một INSTEAD OF trigger là một trigger cho phép ta bỏ qua một lệnh INSERT, UPDATE, DELETE
 dữ liệu với một bảng hoặc view và thực thi một câu lệnh khác trong trigger.
Lúc này sự kiện insert, update, delete gốc không xảy ra.
Nói ngắn gọn, INSTEAD OF trigger bỏ qua sự thực thi lệnh DML và thực thi một lệnh SQL khác.
CREATE TRIGGER [schema_name.]trigger_name
ON {table_name | view_name}
INSTEAD OF {[INSERT][,][UPDATE][,][DELETE]}
AS
{sql_statements}
*/ 
--VD1 Tạo INSTEAD OF trigger cho hành động thêm mới một sinh viên vào view StudentApprovalInfo.
--Dữ liệu cần được lưu vào bảng StudentApprovals trước khi chính thức được đưa vào bảng Students.
/*CREATE TABLE StudentApprovals (
	StudentApprovalsId INT PRIMARY KEY IDENTITY (100,1),
	StudentId NVARCHAR(20),
	FirstName NVARCHAR(200),
	LastName NVARCHAR(200),
	MidName NVARCHAR(200),
	Address NVARCHAR(200),
	Major NVARCHAR (200),
	BirthDate NVARCHAR(200),
	PhoneNumber VARCHAR(20),
	Gpa FLOAT(2),
	Status NVARCHAR(200),
)*/
/*CREATE VIEW vw_StudentApprovalInfo 
AS 
 SELECT 
	s.StudentId,s.FirstName,s.LastName,s.MidName,s.Address,s.Major,s.BirthDate,s.PhoneNumber,s.Gpa,'Approval' AS Status
 FROM Students s
 UNION ALL
  SELECT 
	s.StudentId,s.FirstName,s.LastName,s.MidName,s.Address,s.Major,s.BirthDate,s.PhoneNumber,s.Gpa,'Pending Approval' AS Status
 FROM StudentApprovals s*/
 --SELECT * FROM vw_StudentApprovalInfo
 -------
 /*
 CREATE TRIGGER TR_Student_Insert
 ON vw_StudentApprovalInfo
 INSTEAD OF INSERT
 AS BEGIN
  SET NOCOUNT ON;
  INSERT INTO StudentApprovals(
	StudentId,FirstName,LastName,MidName,Address,Major,BirthDate,PhoneNumber,Gpa,Status)
	SELECT StudentId,FirstName,LastName,MidName,Address,Major,BirthDate,PhoneNumber,Gpa,'Pending Approval'  FROM inserted 
 END*/
 /*
 INSERT INTO vw_StudentApprovalInfo( 
	StudentId,
	FirstName,
	LastName,
	MidName,
	Address,
	Major,
	BirthDate,
	PhoneNumber,
	Gpa
) 
VALUES
	('B25DCCN112', N'Phú', N'Mai', N'Đức', N'Hải Phòng', N'CNTT', '2007-04-08', '0359553318', 3.29),
	('B25DCCN113', N'Anh', N'Đàm', N'Ngọc', N'Bình Dương', N'CNTT', '2007-05-24', '0359553317', 3.69);
*/

--SELECT * FROM vw_StudentApprovalInfo;
 --SELECT * FROM vw_StudentApprovalInfo
 --------------------------------------------------------------------------------------------------------------------------------------------------------
--VD2:Tạo INSTEAD OF trigger cho hành động sửa thông tin một sinh viên trong bảng Students. 
--Dữ liệu cần được lưu vào bảng StudentUpdateApprovals trước khi chính thức được cập nhật vào bảng Students.
/*
CREATE TABLE StudentUpdateApprovals (
	StudentApprovalsId INT PRIMARY KEY IDENTITY (100,1),
	StudentId NVARCHAR(20),
	FirstName NVARCHAR(200),
	LastName NVARCHAR(200),
	MidName NVARCHAR(200),
	Address NVARCHAR(200),
	Major NVARCHAR (200),
	BirthDate NVARCHAR(200),
	PhoneNumber VARCHAR(20),
	Gpa FLOAT(2),
	Status NVARCHAR(200),
)*/
/*
CREATE VIEW vw_StudentApprovalInfoUpdate 
AS 
 SELECT 
	s.StudentId,s.FirstName,s.LastName,s.MidName,s.Address,s.Major,s.BirthDate,s.PhoneNumber,s.Gpa,'Approval' AS Status
 FROM Students s
 UNION ALL
  SELECT 
	s.StudentId,s.FirstName,s.LastName,s.MidName,s.Address,s.Major,s.BirthDate,s.PhoneNumber,s.Gpa,'Pending Approval' AS Status
 FROM StudentUpdateApprovals s*/
 --
 /*
CREATE OR ALTER TRIGGER TR_Students_update_info
ON Students
INSTEAD OF UPDATE
AS BEGIN
	SET NOCOUNT ON;
  INSERT INTO StudentUpdateApprovals(
	StudentId,FirstName,LastName,MidName,Address,Major,BirthDate,PhoneNumber,Gpa,Status)
	SELECT StudentId,FirstName,LastName,MidName,Address,Major,BirthDate,PhoneNumber,Gpa,'Pending Approval'  FROM inserted
	WHERE
		StudentId IN(
			SELECT	
				StudentId
			FROM
				deleted
		);
END*/
UPDATE Students
SET
	Gpa = 3.67
WHERE
	StudentId = 'B25DCCN103';

-- kiểm tra view
