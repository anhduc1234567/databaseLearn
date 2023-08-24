--Tạo trigger giám sát các hành động DELETE, UPDATE, INSERT dữ liệu vào bảng Subjects.
/*CREATE TABLE SubjectAudits (
	SubjectAuditId INT PRIMARY KEY IDENTITY(100,1),
	SubjectId  NVARCHAR(200),
	Name NVARCHAR(200),
	Credit INT,
	NumOfLesson INT,
	Type NVARCHAR(200),
	UpdateAt DATETIME DEFAULT GETDATE(),
	Operation CHAR(3)
	CHECK (Operation = 'DEL' OR Operation = 'INS')
)*/
---------
/*
CREATE OR ALTER TRIGGER TR_Subject_update 
ON dbo.Subjects
AFTER DELETE,INSERT,UPDATE
AS BEGIN
	SET NOCOUNT ON;
	INSERT INTO SubjectAudits (
		SubjectId,Name,Credit,NumOfLesson,Type,Operation
	)
	SELECT ins.SubjectId,ins.Name,ins.Credit,ins.NumOfLesson,ins.Type,'INS'  FROM inserted ins 
	UNION ALL
	SELECT del.SubjectId,del.Name,del.Credit,del.NumOfLesson,del.Type,'DEL'  FROM deleted del
END*/
--------------
--INSERT INTO Subjects (SubjectId,Name,Credit,NumOfLesson,Type)
--VALUES ('SUBJ1772', N'Tiếng Hàn', 4, 48, N'Chuyên ngành')
--DELETE FROM Subjects WHERE SubjectId = 'SUBJ16772'
--UPDATE Subjects SET Name = 'Tiếng Việt' WHERE SubjectId = 'SUBJ169772' 
