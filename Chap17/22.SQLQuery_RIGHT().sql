
/*Hàm RIGHT() dùng để trích xuất n kí tự tính từ bên phải cùng của chuỗi cho trước.
Cú pháp:
RIGHT(string, number_of_chars)
*/
DECLARE @string NVARCHAR(200) = N'Nguyễn Đức Anh   '
SELECT RIGHT(RTRIM(@string),5)