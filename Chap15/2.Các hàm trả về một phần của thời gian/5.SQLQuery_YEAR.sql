/*Hàm YEAR() trả về năm của ngày tháng năm cho trước trong tham số dưới dạng giá trị số nguyên INT.
Cú pháp: YEAR(input_date)
Đối số truyền vào hàm trên có thể là một chuỗi ngày tháng năm hoặc là một biểu thức có giá trị là DATE, TIME, SMALLDATETIME, DATETIME, DATETIME2, DATETIMEOFFSET.
Hàm này cũng trả về giá trị tương đương hàm DATEPART(year, input_date)*/
SELECT * , YEAR(BirthDate) FROM Students