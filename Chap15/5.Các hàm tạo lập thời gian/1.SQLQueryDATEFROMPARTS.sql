-- Hàm DATEFROMPARTS() trả về một giá trị DATE hoàn chỉnh từ các tham số đầu vào.
--Cú pháp:
--DATEFROMPARTS(year, month, day)
DECLARE @date DATE = DATEFROMPARTS(2016,02,29)
SELECT @date