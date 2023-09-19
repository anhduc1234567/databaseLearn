/*Hàm TODATETIMEOFFSET() chuyển đổi một giá trị DATETIME2 sang giá trị kiểu DATETIMEOFFSET.
Cú pháp của hàm:
TODATETIMEOFFSET(expression, time_zone)*/

SELECT TODATETIMEOFFSET(SYSDATETIME(),'+09:00')