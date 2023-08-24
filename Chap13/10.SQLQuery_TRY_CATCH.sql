/*Cấu trúc TRY CATCH cho phép ta xử lý ngoại lệ theo cách dễ nhìn trong SQL Server.
Ngoại lệ là những lỗi chương trình xảy ra có thể xử lý được bằng lệnh SQL. Ví dụ: chia cho 0, tên bảng, stored procedure, view không tồn tại…
Để sử dụng cấu trúc TRY CATCH bạn cần đặt nhóm câu lệnh SQL có thể xảy ra ngoại lệ vào trong khối BEGIN TRY … END TRY.*/
/*BEGIN TRY
    -- statements may cause exceptions
END TRY
BEGIN CATCH
	ERROR_LINE(): trả về chỉ số dòng SQL xảy ra ngoại lệ.
	ERROR_MESSAGE(): trả về thông tin đầy đủ về lỗi đã xảy ra.
	ERROR_PROCEDURE(): trả về tên của stored procedure hoặc trigger nơi xảy ra ngoại lệ.
	ERROR_NUMBER(): trả về mã lỗi ở dạng số nguyên.
	ERROR_SEVERITY(): trả về mức độ nghiêm trọng của lỗi đã xảy ra.
	ERROR_STATE(): trả về con số đại diện cho trạng thái của lỗi đã xảy ra.
    -- statements that handle exception
END CATCH*/
/*CREATE PROC usp_dividezero @a INT,@b INT,@c FLOAT OUT
AS 
BEGIN
BEGIN TRY
	SET @c = @a /@b
    -- statements may cause exceptions
END TRY
BEGIN CATCH
	PRINT ERROR_MESSAGE()
END CATCH
	

END*/
/*
DECLARE @a INT = 20
DECLARE @b INT = 0
DECLARE @c FLOAT
EXEC usp_dividezero @a,@b,@c OUT

PRINT @c*/




