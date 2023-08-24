-- Kiểu VARCHAR(1-8000)
--CREATE TABLE learn_varchar(var_col VARCHAR(20))
INSERT INTO learn_varchar(var_col)
	VALUES ('HOC'),
	 ('HEBFUEEB3UEFNIEFI456'),
	 ('nguyễn tuấn hoàng')
SELECT *, LEN(var_col), DATALENGTH(var_col) FROM learn_varchar

