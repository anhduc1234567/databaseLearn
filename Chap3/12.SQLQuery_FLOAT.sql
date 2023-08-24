-- Kiểu FLOAT ( 4 / 8  byte)
--CREATE TABLE learn_float (id VARCHAR(10), name NVARCHAR(20), gpa FLOAT(2))

INSERT INTO learn_float(id,name,gpa)
VALUES ('SV1005',N'Lê Thùy Minh Anh',4.99)
SELECT 
	CAST(gpa AS INT) AS int_gpa
FROM learn_float