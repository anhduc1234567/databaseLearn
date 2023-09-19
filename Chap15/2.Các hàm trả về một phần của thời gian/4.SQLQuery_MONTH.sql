/*Hàm MONTH() trả về tháng của ngày tháng năm cho trước trong tham số dưới dạng giá trị số nguyên INT.
Cú pháp: MONTH(input_date)
Đối số truyền vào hàm trên có thể là một chuỗi ngày tháng năm hoặc là một biểu thức có giá trị là DATE, TIME, SMALLDATETIME, DATETIME, DATETIME2, DATETIMEOFFSET.
Hàm này cũng trả về giá trị tương đương hàm DATEPART(month, input_date).*/
SELECT MONTH('2023-8-23')