--Kiểu NVARCHAR (1-4000) 2byte/1 ký tự\
--CREATE TABLE learn_nvarchar (nvarchar_col NVARCHAR(30))
--INSERT INTO learn_nvarchar(nvarchar_col)
--VALUES (N'Nguyễn Đức Chiến'),(N'Tuấn Anh')
SELECT 
	nvarchar_col,
	LEN(nvarchar_col) as length,
	DATALENGTH(nvarchar_col) as datalength
FROM learn_nvarchar