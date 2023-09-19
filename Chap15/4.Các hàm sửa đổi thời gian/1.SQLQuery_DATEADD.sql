/*Hàm DATEADD() dùng để thêm một giá trị vào date được chỉ định và trả về giá trị sau khi sửa đổi.
Cú pháp: DATEADD(date_part, value, input_date)
Trong đó:
date_part là phần của date cần thêm giá trị value vào.
value là giá trị số nguyên muốn thêm vào phần date_part của input_date.
Nếu giá trị value mà là số thực thì phần thập phân sẽ bị cắt bỏ.
input_date là một chuỗi kí tự mô tả thông tin ngày giờ hoặc một biểu thức trả về giá trị kiểu TIME, DATE, DATETIME, DATETIME2, SMALLDATETIME hoặc DATETIMEOFFSET.
Sau đây là các giá trị có thể sử dụng trong phần date_part:*/
SELECT DATEADD(YEAR,-5,GETDATE())