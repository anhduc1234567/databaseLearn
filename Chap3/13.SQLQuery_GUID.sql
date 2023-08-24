-- GUID (16byte) là 1 mã duy nhất giúp nâng cao tính bảo mật
--CREATE TABLE learn_guid(id UNIQUEIDENTIFIER DEFAULT NEWID(), full_name NVARCHAR(40))
INSERT INTO learn_guid(full_name) VALUES (N'Nguyễn Đức Anh')
SELECT *, LEN(id) AS lenght, DATALENGTH(id) as data_Length
FROM learn_guid
