/*
Hàm này trả về giá trị kiểu DATETIME2 từ các đối số thành phần.
Cú pháp:
DATETIME2FROMPARTS ( year, month, day, hour, minute, seconds, fractions, precision )
*/
DECLARE @now DATETIME2 = DATETIME2FROMPARTS(2023,8,27,23,23,00,999,3)
SELECT @now