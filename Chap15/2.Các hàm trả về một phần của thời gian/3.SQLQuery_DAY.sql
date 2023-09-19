/*Hàm DAY() trả về số nguyên đại diện cho một ngày nào đó trong tháng(1-31 ngày) tùy tháng từ tham số cho trước.
Cú pháp: DAY(input_date)
Hàm này có thể nhận vào một string biểu diễn thông tin ngày giờ hoặc một biểu thức dẫn đến giá trị DATE, TIME, SMALLDATETIME, DATETIME hoặc DATETIME2, DATETIMEOFFSET.
Hàm DAY() trả về giá trị tương tự như hàm DATEPART(day, input_date).*/
SELECT DAY(GETDATE())