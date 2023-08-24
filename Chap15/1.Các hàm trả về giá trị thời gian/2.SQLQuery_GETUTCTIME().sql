/*
Hàm GETUTCDATE() trả về thời gian UTC hiện thời lấy từ máy tính mà SQL Server đang hoạt động.
Cú pháp của hàm: GETUTCDATE()
Hàm này trả về giá trị có kiểu là DATETIME biểu diễn thông tin thời gian UTC.
*/
DECLARE
    @local_time DATETIME,
    @utc_time DATETIME;

SET @local_time = GETDATE();
SET @utc_time = GETUTCDATE();

SELECT 
    @local_time AS LocalTime, 
    @utc_time AS UTCTime

-- ở việt name UTC +7 -> LỆCH 7H SO VỚI UTC