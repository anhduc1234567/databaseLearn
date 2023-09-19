/*Để xóa bỏ một hàm người dùng tự định nghĩa ta sử dụng lệnh DROP FUNCTION:
DROP FUNCTION [ IF EXISTS ] [ schema_name. ] function_name;
Trong đó:
Mệnh đề IF EXISTS đảm bảo SQL Server không báo lỗi khi sai tên hàm hoặc hàm không tồn tại.
schema_name là tên lược đồ mà hàm thuộc về. Mặc định là dbo.
function_name là tên hàm cần xóa bỏ.
Lưu ý rằng nếu hàm cần xóa được tham chiếu bởi view hoặc các hàm khác với tùy chọn WITH SCHEMABINDING thì xóa hàm với lệnh DROP FUNCTION sẽ thất bại.
Trường hợp có cột chứa ràng buộc CHECK, DEFAULT và các cột dẫn xuất tham chiếu tới hàm thì việc xóa hàm cũng thất bại.
Để xóa nhiều hàm cùng lúc, liệt kê tên các hàm cần xóa cách nhau bởi dấu phẩy.*/