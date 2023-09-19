/*
Hàm CONCAT_WS() dùng để nối các chuỗi kí tự lại với nhau sử dụng kí tự phân tách cho trước.
Hàm trả về chuỗi kí tự kết quả sau khi nối.
Cú pháp:
CONCAT_WS(separator, string1, string2, ...., string_n)
*/
SELECT CONCAT_WS(' ',FirstName,LastName) FROM Students