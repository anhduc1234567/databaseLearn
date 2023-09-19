
/*Hàm CAST() dùng để chuyển một giá trị từ kiểu này sang kiểu kia.
Cú pháp:
CAST(expression AS datatype(length))
Trong đó:
expression: bắt buộc, là giá trị cần chuyển đổi kiểu.
datatype: bắt buộc. Đây là kiểu dữ liệu đích cần chuyển tới. Có thể là bất kì kiểu dữ liệu hợp lệ nào trong SQL.
(length): phần tùy chọn, độ dài kết quả sau chuyển đổi. Áp dụng với các kiểu như char, varchar, nvarchar, binary, varbinary.*/
DECLARE @date NVARCHAR(20) = '2023-5-6'
DECLARE @now DATETIME = GETDATE()
PRINT CAST(@now AS VARCHAR(20))
--SELECT CAST(@date AS date)