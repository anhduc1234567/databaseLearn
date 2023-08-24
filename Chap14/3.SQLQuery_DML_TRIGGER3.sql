/*CREATE TABLE StaffAudits (
	StaffAuditId INT PRIMARY KEY IDENTITY (100,2),
	StaffId INT ,
	FirstName NVARCHAR(200),
	LastName NVARCHAR (200),
	Emaill NVARCHAR(200),
	PhoneNumber NVARCHAR(200),
	Active VARCHAR(4) DEFAULT 'TRUE',
	StoreId INT ,
	ManagerId INT,
	UpdateAt DATETIME DEFAULT GETDATE(),
	Operation CHAR(3)
)*/
/*
CREATE TRIGGER TR_staff_update ON Staffs
AFTER DELETE,INSERT,UPDATE
AS BEGIN
	SET NOCOUNT ON;
	INSERT INTO StaffAudits(
	StaffId,FirstName,LastName,Emaill,PhoneNumber,StoreId,ManagerId,Operation
	)
	SELECT i.StaffId,i.FirstName,i.LastName,i.Email,i.PhoneNumber,i.StoreId,i.ManagerId,'INS' FROM inserted i
	UNION ALL
	SELECT d.StaffId,d.FirstName,d.LastName,d.Email,d.PhoneNumber,d.StoreId,d.ManagerId,'DEL' FROM deleted d
END*/