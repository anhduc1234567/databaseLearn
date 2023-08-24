/*Tạo bảng với cột kiểu BIT.
Thêm giá trị bit 1 vào cột kiểu BIT.
Thêm giá trị bit 0 vào cột kiểu BIT.
Thêm giá trị “True” vào cột kiểu BIT.
Thêm giá trị “False” vào cột kiểu BIT.
Thêm giá trị khác vào cột kiểu BIT.*/
--CREATE TABLE tabletest(int_col INT, bit_col BIT) 
INSERT INTO tabletest(int_col,bit_col) 
VALUES 
		(100,1),
		(200,1),
		(200,0),
		(1000,600),
		(1000,8)