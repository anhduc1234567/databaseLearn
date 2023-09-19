--Hàm SYSDATETIMEOFFSET() trả về một giá trị kiểu DATETIMEOFFSET(7) đại diện cho ngày giờ hiện tại kèm theo múi giờ.

--SELECT SYSDATETIMEOFFSET()
DECLARE @currentDateTime DATETIMEOFFSET(7) = SYSDATETIMEOFFSET();
DECLARE @zz VARCHAR(2) = 'zz';
DECLARE @zzz VARCHAR(3) = 'zzz';
SELECT DATEPART(TZOFFSET,@currentDateTime) -- theo phút
SELECT 
    @currentDateTime AS 'Current Date Time Offset',
    FORMAT(@currentDateTime, @zz) AS 'zz',
    FORMAT(@currentDateTime, @zzz) AS 'zzz';