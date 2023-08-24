/*
Dynamic SQL hay SQL động là một kĩ thuật lập trình cho phép bạn xây dựng cấu trúc lệnh SQL tự động tại thời điểm chương trình chạy.
Nó cho phép bạn tạo một hoặc nhiều câu lệnh SQL mềm dẻo cho một mục đích nào đó.
Toàn bộ cú pháp cụ thể của câu lệnh SQL không được biết rõ cho tới khi chương trình chạy.
Ví dụ bạn có thể dùng SQL động để tạo thủ tục truy vấn vào một bảng nào đó chưa được biết trước.
Để tạo SQL động bạn chỉ cần tạo một chuỗi kí tự mô tả câu lệnh SQL và thực hiện việc chạy lệnh về sau với thủ tục sp_executesql.

EXEC sp_executesql
    sql_statement,
    parameter_definition,
    @param1 = value1,
    @param2 = value2,*/

--VD:
--DECLARE @tablename NVARCHAR(200) = 'Customers'
/*CREATE PROC usp_selectfrom @tablename NVARCHAR(200)
AS 
BEGIN
	DECLARE @sql NVARCHAR(MAX) = 'SELECT * FROM ' + @tablename
	EXEC sp_executesql @sql
END*/
--EXEC usp_selectfrom @tablename
--VD1:Viết lệnh SQL động cho phép đếm số bản ghi trong bảng được chỉ định thỏa mãn tiêu chí của cột nào đó.
/*CREATE OR ALTER PROC usp_counttable (
	@table NVARCHAR(200), 
	@column NVARCHAR(200),
	@expression NVARCHAR(2),
	@value NVARCHAR(100))
AS
BEGIN
	DECLARE @sql NVARCHAR(MAX);
	SET @sql = 'SELECT COUNT(*) ' + 
	'FROM ' + @table  + ' WHERE ' + @column  +' ' + @expression + ' '  + @value
	EXEC sp_executesql @sql
END*/
/*EXEC usp_counttable 
	'Students',
	'Gpa',
	'>=',
	'3.5';*/
--VD2:Viết lệnh SQL động cho phép select ra top n dòng và các dòng cùng giá trị sắp xếp giảm dần theo tiêu chí nào đó.
/*CREATE OR ALTER PROC nsp_selecttopn (@n INT,@table NVARCHAR(200),@colunm NVARCHAR(200)) AS
BEGIN
	DECLARE @nvar VARCHAR(20) = CAST(@n AS VARCHAR(20))
	DECLARE @sql NVARCHAR(MAX) = 'SELECT TOP ' + @nvar + ' * ' + 'FROM ' + @table +' ORDER BY ' + @colunm+ ' DESC'
	EXEC sp_executesql @sql 

END*/
/*EXEC nsp_selecttopn
	5,
	'Students',
	'Gpa';*/
--VD3: Viết lệnh SQL động xóa dữ liệu của một bảng nào đó theo tiêu chí cho trước.
/*CREATE OR ALTER PROC nsp_delete (@table NVARCHAR(200),@column NVARCHAR(200),@expression VARCHAR(10),@value NVARCHAR(200))
AS 
BEGIN
	DECLARE @sql NVARCHAR(MAX )= 'DELETE FROM' + ' ' +@table +' ' + 'WHERE ' + @column +' '+ @expression + ' ' + '@value'
	--PRINT @sql
	EXEC sp_executesql  @sql, N'@value NVARCHAR(200)', @value = @value;
END*/
/*EXEC nsp_delete
	'Students',
	'StudentId',
	'=',
	'B25DCCN101';*/
--VD: Viết lệnh SQL động sửa dữ liệu của một bản ghi nào đó theo tiêu chí cho trước.
/*CREATE OR ALTER PROC sp_update(
	@table NVARCHAR(200),
	@idColName NVARCHAR(200),
	@idValue NVARCHAR(200),
	@colName NVARCHAR(200),
	@value NVARCHAR(200)
)AS
BEGIN
	IF CHARINDEX(';', @value) = 0 AND
		(@colName NOT LIKE '%[^a-z0-9 ]%' ) -- không được chứa các biểu thức như =, >=, <=
	BEGIN
	DECLARE @sql NVARCHAR(MAX) = 
	'UPDATE ' + QUOTENAME(@table)  + 'SET ' +QUOTENAME(@colName) + ' = @value' +
			' WHERE ' + QUOTENAME(@idColName) + ' = @idValue';
		-- thực thi lệnh SQL. Sử dụng tham số hóa để tránh lỗi Invalid column name 'xyz' 
		-- với xyz là giá trị trong biến @value
	EXEC sp_executesql @sql, N'@value NVARCHAR(200),@idValue NVARCHAR(200)',
				@value = @value,
				@idValue = @idValue
	END
END*/
EXEC sp_update 
	'Students',
	'StudentId',
	'B25DCCN102',
	'Gpa',
	'3.5';