/*
CREATE TRIGGER [schema_name.]trigger_name
ON table_name
AFTER {[INSERT], [UPDATE], [DELETE]}
[NOT FOR REPLICATION]
AS
{sql_statements}
*/
-----------------------------------
--Tạo trigger giám sát các hành động DELETE, UPDATE, INSERT dữ liệu vào bảng Students.
/*CREATE TABLE StudentAudits( 
	StudentAuditId INT IDENTITY PRIMARY KEY, 
	StudentId VARCHAR(50) NOT NULL, 
	FirstName NVARCHAR(50), 
	LastName NVARCHAR(50), 
	MidName NVARCHAR(50), 
	Address NVARCHAR(50), 
	Major NVARCHAR(50), 
	BirthDate DATETIME NOT NULL,
	PhoneNumber VARCHAR(50),
	Gpa FLOAT, 
	UpdateAt DATETIME DEFAULT GETDATE(), 
	Operation CHAR(3) NOT NULL, 
	CHECK(Operation = 'INS' OR Operation = 'DEL' OR Operation = 'UPD') 
);*/
/*
CREATE OR ALTER TRIGGER TR_Student_update
ON dbo.Students 
AFTER INSERT, DELETE, UPDATE 
AS BEGIN 
	SET NOCOUNT ON; -- không hiển thị thông báo đã chèn bản ghi thành công vào 
	-- bảng giám sát khi trigger được kích hoạt 
	INSERT INTO StudentAudits(
	StudentId,FirstName,LastName,MidName,Address,Major,BirthDate,PhoneNumber,Gpa,Operation
	) 
	SELECT ins.StudentId,ins.FirstName,ins.LastName,ins.MidName,ins.Address,ins.Major,ins.BirthDate,ins.PhoneNumber,ins.Gpa,'INS' FROM inserted ins
	UNION ALL
	SELECT del.StudentId,del.FirstName,del.LastName,del.MidName,del.Address,del.Major,del.BirthDate,del.PhoneNumber,del.Gpa,'DEL' FROM deleted del

END*/
--UPDATE Students
--DELETE FROM Students WHERE StudentId = 'B25DCCN102' INSERT INTO Students( 
/*INSERT INTO Students (
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
SELECT TOP 1 StudentId,
	FirstName,
	LastName,
	MidName,
	Address,
	Major,
	BirthDate,
	PhoneNumber,
	Gpa
FROM StudentAudits WHERE StudentId = 'B25DCCN1008'*/
--	('B25DCCN102', N'Trung', N'Mai', N'Đức', N'Hà Nam', N'CNTT', '2007-09-08', '0359553314', 3.39)
-----
--DELETE FROM Students WHERE FirstName Like 'Trung'
----
--UPDATE  Students SET Gpa = 3.5 WHERE StudentId = 'B25DCCN103' 

