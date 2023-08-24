/*Lệnh SQL dựa trên tập hợp. Ví dụ câu lệnh SELECT trả về tập kết quả là các dòng dữ liệu lấy được từ câu truy vấn.
Đôi khi ta cần xử lý tập dữ liệu theo từng dòng một, lúc này con trỏ được sử dụng.
Vậy, con trỏ CSDL là một đối tượng cho phép duyệt lần lượt từng dòng trên tập kết quả.
Con trỏ cho phép xử lý từng dòng đơn trả về bởi câu truy vấn.*/
/*
B1:DECLARE cursor_name CURSOR
    FOR select_statement;

B2:OPEN cursor_name;

B3:FETCH NEXT FROM cursor INTO variable_list;

b4:CLOSE cursor_name;
DEALLOCATE cursor_name;

*/

DECLARE cursorStudent CURSOR
FOR 
	SELECT FullName,Major FROM Students
DECLARE @fullname NVARCHAR(200)
DECLARE @major NVARCHAR(20)

OPEN cursorStudent
WHILE @@FETCH_STATUS = 0
BEGIN
FETCH NEXT FROM cursorStudent INTO @fullname,@major
PRINT @fullname + ' - ' + @major
--FETCH NEXT FROM cursorStudent INTO @fullname,@major
END


--PRINT @fullname + ' - ' + @major

CLOSE cursorStudent
DEALLOCATE cursorStudent