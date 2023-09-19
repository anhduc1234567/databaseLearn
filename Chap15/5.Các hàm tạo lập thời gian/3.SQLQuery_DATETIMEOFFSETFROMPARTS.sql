
/*
Hàm DATETIMEOFFSETFROMPARTS() dùng để tạo giá trị DATETIMEOFFSET từ đối số ngày giờ cho trước.
Cú pháp của hàm:
DATETIMEOFFSETFROMPARTS ( year, month, day, hour, minute,
    seconds, fractions, hour_offset, minute_offset, precision )
*/
DECLARE @now DATETIMEOFFSET = DATETIMEOFFSETFROMPARTS(2023,8,23,12,30,00,000,00,-30,3)
SELECT @now
