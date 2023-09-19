/*Hàm SYSDATETIME() trả về một giá trị kiểu DATETIME2 thể hiện giá trị hiện tại của ngày giờ trên hệ thống nơi mà SQL Server đang hoạt động.
Hàm SYSDATETIME() không chấp nhận tham số.
Hàm SYSDATETIME() cho kết quả có độ chính xác cao hơn GETDATE() về số mili giây lẻ ở phần thập phân.
Đây là hàm không xác định do đó view và các cột có biểu thức tham chiếu tới hàm này không thể đánh chỉ mục.*/
SELECT SYSDATETIME()