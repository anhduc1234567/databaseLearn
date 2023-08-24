
/*CREATE OR ALTER PROC usp_GetRecords( 
	@tableName NVARCHAR(200),
	@col1 NVARCHAR(200),
	@operator1 NVARCHAR(10),
	@value1 NVARCHAR(200),
	@connection NVARCHAR(10),
	@col2 NVARCHAR(200),
	@operator2 NVARCHAR(10),
	@value2 NVARCHAR(200)
) AS 
BEGIN
	DECLARE @sql NVARCHAR(MAX)
	SET @sql = 'SELECT * FROM ' + QUOTENAME(@tableName) + ' WHERE ' 
	+ QUOTENAME(@col1) + ' ' + @operator1 + ' @value1 ' + @connection + ' ' + QUOTENAME(@col2) +
	' ' +  @operator2 + ' @value2'
	EXECUTE sp_executesql @sql,N'@value1 NVARCHAR(200),@value2 NVARCHAR(200)',
		@value1 = @value1,
		@value2 = @value2
END*/
EXEC usp_GetRecords 
	'Students',
	'Major',
	'=',
	'CNTT',
	'AND',
	'Address',
	'=',
	N'Hà Nội'