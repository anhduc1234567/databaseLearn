/*
CREATE FUNCTION [schema_name.]function_name (parameter_list) 
RETURNS data_type AS 
BEGIN 
    statements 
    RETURN value 
END*/
--vd1 Viết hàm tìm điểm thấp nhất của các sinh viên theo từng chuyên ngành trong bảng Students.
/*CREATE FUNCTION dbo.find_mingpa_major( @major NVARCHAR(20))
RETURNS FLOAT(2) AS
BEGIN
	DECLARE @min FLOAT;
	SELECT @min = MIN(Gpa) 
	FROM Students
	WHERE
	Major = @major
	RETURN @min
END*/
--SELECT DISTINCT major,dbo.find_mingpa_major(Major) from Students
--VD2:Viết hàm phân loại học lực cho từng sinh viên trong bảng Students.
/*CREATE FUNCTION dbo.fn_capacity(@gpa FLOAT(2))
RETURNS NVARCHAR(200) AS
BEGIN
	DECLARE @capacity NVARCHAR(200) 
	IF @gpa >3.6 
	BEGIN
	SET @capacity = N'Xuất Xắc'
	END
	ELSE IF @gpa >3.2
	BEGIN
	SET @capacity = N'Giỏi'
	END
	ELSE IF @gpa >2.8
	BEGIN
	SET @capacity = N'Khá'
	END
	ELSE IF @gpa >2.4
	BEGIN
	SET @capacity = N'Trung Bình'
	END
	ELSE IF @gpa >2.0
	BEGIN
	SET @capacity = N'Yếu'
	END
	RETURN @capacity
END*/

--SELECT *,dbo.fn_capacity(Gpa) FROM Students
--VD3:Viết hàm tìm sinh viên đăng ký nhiều môn học nhất.
/*
CREATE FUNCTION dbo.fn_fin_students_regmost()
RETURNS TABLE
AS
	RETURN
	SELECT TOP 1 WITH TIES
		st.StudentId,
		st.FirstName,
		st.LastName,
		st.PhoneNumber,
		st.Major,
		st.Gpa,
		COUNT(r.StudentId) NumOfRegistered 
	FROM 
	students st
	INNER JOIN Registers r
	ON st.StudentId = r.StudentId
	GROUP BY st.StudentId,
		st.FirstName,
		st.LastName,
		st.PhoneNumber,
		st.Major,
		st.Gpa
	ORDER BY COUNT(r.StudentId) DESC
*/
SELECT * FROM dbo.fn_fin_students_regmost()
