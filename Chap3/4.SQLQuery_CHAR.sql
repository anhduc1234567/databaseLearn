/*
Kiểu dữ liệu CHAR(n) TỪ 1 -8000

*/
--CREATE TABLE learn_char(char_col CHAR(1000))
INSERT INTO learn_char(char_col) VALUES ('anh                    d')
SELECT 
	char_col, 
	LEN(char_col) as LenghtChar,
	DATALENGTH(char_col) as DataLenght
FROM 
	learn_char