/*Hàm SYSUTCDATETIME() trả về một giá trị DATETIME2 đại diện cho thời gian UTC hệ thống mà SQL Server đang vận hành.
Hàm này cho kết quả chính xác hơn hàm GETUTCDATE().
Cú pháp:*/
DECLARE @datetime2 DATETIME2 =  SYSUTCDATETIME()

SELECT CONVERT(DATE,@datetime2) AS Date , CONVERT(TIME,@datetime2) AS Time