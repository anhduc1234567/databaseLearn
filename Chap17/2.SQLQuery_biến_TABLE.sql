/*Biến table là loại biến tương tự như bảng tạm thời cho phép ta lưu trữ các dòng dữ liệu của bảng.
Cú pháp khai báo biến table:
DECLARE @tblVariableName TABLE(
    columns
)*/
/*
CREATE FUNCTION dbo.fn_countmanager()
RETURNS @count TABLE(
	Id INT,
	Name NVARCHAR(200),
	NumOfStaff INT
)
AS
BEGIN
INSERT INTO @count
SELECT 
	sf2.StaffId,sf2.FirstName+sf2.LastName,COUNT(sf2.StaffId)
	FROM Staffs sf1 
		INNER JOIN Staffs sf2
		ON sf1.ManagerId = sf2.StaffId AND sf1.StaffId > sf2.StaffId
GROUP BY sf2.StaffId,sf2.FirstName,sf2.LastName
RETURN;
END
*/
SELECT * FROM dbo.fn_countmanager()