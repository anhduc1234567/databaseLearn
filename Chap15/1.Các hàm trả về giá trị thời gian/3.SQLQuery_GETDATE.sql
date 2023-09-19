/*
Hàm GETDATE() trả về thông tin thời gian hệ thống kiểu DATETIME không bao gồm múi giờ.
Giá trị này phụ thuộc vào thời gian hệ điều hành.
Cú pháp: GETDATE()
Lưu ý rằng GETDATE() là một hàm không xác định nên ta không thể tạo index cho cột tham chiếu tới hàm này trong Views.*/
DECLARE @date DATETIME =GETDATE()
SELECT CONVERT(DATE,@date),CONVERT(TIME,@date)