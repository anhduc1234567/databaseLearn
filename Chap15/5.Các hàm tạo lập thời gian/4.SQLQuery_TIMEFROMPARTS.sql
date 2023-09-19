/*Hàm TIMEFROMPARTS() trả về thời gian đầy đủ từ các tham số thành phần.
Cú pháp:
TIMEFROMPARTS(hour, minute, seconds, fractions, precision)*/
DECLARE @now TIME = TIMEFROMPARTS(20,30,00,0,0)
SELECT @now