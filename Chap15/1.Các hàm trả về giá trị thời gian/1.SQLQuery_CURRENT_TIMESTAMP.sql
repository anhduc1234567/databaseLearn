/*
Hàm CURRENT_TIMESTAMP trả về giá trị thời gian hiện tại của hệ điều hành mà SQL Server đang chạy.
Giá trị trả về kiểu DATETIME không bao gồm thông tin về múi giờ.
Cú pháp của hàm: CURRENT_TIMESTAMP
Kết quả của hàm này tương đương GETDATE() do đó ta có thể thay thế hai hàm này cho nhau.
*/
SELECT CURRENT_TIMESTAMP