-- Tham số trong sp
-- CREATE PROC name(@thamso AS kieududieu)
-- AS BEGIN ... END
/*ALTER PROC nsp_Students_FullName(@samewith AS NVARCHAR(20) = '')
AS BEGIN 
	SELECT * FROM Students WHERE  FullName LIKE @samewith
	END
	VD về nhiều tham số
ALTER PROC usp_Students_FindByGpa(
    @minGpa AS FLOAT = 0,
    @maxGpa AS FLOAT = 4 
)	
*/
--EXEC nsp_Students_FullName '%n%'