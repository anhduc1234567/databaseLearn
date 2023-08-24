/*Câu lệnh THROW kích hoạt một ngoại lệ và chuyển điều khiển sang khối catch của cấu trúc TRY CATCH.
Sau đây là cú pháp của câu lệnh THROW:
THROW [error_number, 
     message,
     state];

THROW
	Giá trị error_number không bắt buộc phải được định nghĩa trong sys.messages view.
	Tham số message không chấp nhận các định dạng của hàm printf. Sử dụng FORMATMESSAGE() để thay thế các tham số.
	Giá trị severity của ngoại lệ luôn là 16.
	 */
--THROW 50001,'error !!',1
--EXEC sp_addmessage
	--@msgnum = 50010,@severity = 5,@msgtext =N'Lỗi do người dùng định nghĩa %s'
DECLARE @msgerror NVARCHAR(200) = FORMATMESSAGE(50010,N'ĐỨC ANH');
THROW 50005,@msgerror,1