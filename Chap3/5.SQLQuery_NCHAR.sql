-- kiểu dữ liệu NCHAR(1-4000)
--CREATE TABLE learn_nchar(nchar_col NCHAR(30))
 
INSERT INTO learn_nchar(nchar_col)
VALUES (N'Nguyễn       5')
SELECT 
	nchar_col,
	LEN(nchar_col) as lenght,
	DATALENGTH(nchar_col) as datalenght
FROM 
	learn_nchar
ORDER BY
	lenght