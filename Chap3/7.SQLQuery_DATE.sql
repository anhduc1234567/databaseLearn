-- kiểu dữ liệu DATE (3 byte) yyyy/mm/dd
--CREATE TABLE learn_date (id VARCHAR(5), fullname NVARCHAR(40), birth DATE)

INSERT INTO learn_date(id,fullname,birth)

VALUES ('SV103',N'Lê Thùy Linh','2000.9.30')

SELECT *, LEN(birth) as lenghtbirth
FROM learn_date