/*Làm quen với stored procedure:
	Tìm hiểu những điều cơ bản về stored procedure.
	Tìm hiểu về các tham số.
	Tìm hiểu về các biến.
	Tìm hiểu về các tham số đầu ra.
Các câu lệnh điều khiển
	Câu lệnh BEGIN…END.
	Câu lệnh IF ELSE.
	Câu lệnh WHILE.
	Câu lệnh BREAK.
	Câu lệnh CONTINUE.
	Tìm hiểu về con trỏ.
Xử lý ngoại lệ:
	Tìm hiểu TRY CATCH.
	Tìm hiểu về RAISERROR.
	Tìm hiểu lệnh THROW.
	SQL động.
Các thao tác cơ bản với stored procedure
Ta sẽ tìm hiểu các thao tác:
	Tạo mới stored procedure.
	Chạy một stored procedure.
	Sửa một stored procedure.
	Xóa một stored procedure.
	Cú pháp tạo mới một stored procedure đơn giản:*/
--Tạo mới  sp:
/*CREATE PROCEDURE  usp_TableName_ActionName
AS
BEGIN 
    query;
END;*/
/*CREATE PROC usp_Students_info
AS 
BEGIN 
	SELECT * FROM Students
END*/
--Chạy 1 sp:
--EXEC usp_Students_info
--Sửa 1 sp:
/*ALTER PROC usp_Students_info
AS 
BEGIN
	SELECT StudentId,Major,FullName FROM Students
END*/
--Xóa 1 sp:
--DROP PROC usp_Students_info

