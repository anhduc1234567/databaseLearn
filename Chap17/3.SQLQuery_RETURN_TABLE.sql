/*
Một hàm table-valued là hàm người dùng tự định nghĩa và trả về một bảng dữ liệu. 
Giá trị trả về có kiểu TABLE do đó ta có thể sử dụng loại hàm này như một bảng.
Để tạo hàm table-value ta kết hợp cú pháp của hàm tự định nghĩa và trả về một biến kiểu bảng.
Để sửa đổi hàm ta sử dụng cú pháp ALTER FUNCTION.
Ta sử dụng hàm table-valued như view tham số hóa.
So với các thủ tục thì hàm giá trị bảng mềm dẻo hơn vì ta có thể sử dụng hàm này bất kì đâu mà bảng được sử dụng.*/
--vd:Viết hàm tìm điểm thấp nhất của các sinh viên theo từng chuyên ngành trong bảng Students.
/*CREATE  OR ALTER FUNCTION fn_find_mingpa_major(@major NVARCHAR(200))
RETURNS TABLE
AS
RETURN
SELECT * FROM Students WHERE Gpa = (
SELECT MIN(Gpa) mingpa FROM Students WHERE Major = @major )*/

--SELECT * FROM dbo.fn_find_mingpa_major('CNTT')