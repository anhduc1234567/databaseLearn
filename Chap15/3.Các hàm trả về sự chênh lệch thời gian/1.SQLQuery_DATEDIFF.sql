/*
Hàm DATEDIFF() sử dụng để tính toán và trả về chênh lệch giữa hai ngày cho trước.
Cú pháp: DATEDIFF(date_part, start_date, end_date)
Trong đó:
date_part: là phần của date cần quan tâm, ví dụ năm, tháng, ngày, tuần, quý…
start_date, end_date là ngày bắt đầu và kết thúc cần đối chiếu. Các giá trị này cần phải thuộc về một trong các kiểu: 
DATE, DATETIME, DATETIME2, SMALLDATE, TIME hoặc DATETIMEOFFSET.*/
SELECT * , DATEDIFF(YYYY,BirthDate,GETDATE()) as AGE FROM Students