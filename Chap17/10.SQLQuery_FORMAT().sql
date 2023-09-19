/*
Hàm FORMAT() định dạng một giá trị theo một mẫu định dạng nào đó cho trước.
Sử dụng hàm này để định dạng ngày giờ và các con số.
Để chuyển đổi kiểu của các giá trị, sử dụng hàm CAST() hoặc CONVERT().
Cú pháp hàm FORMAT():
FORMAT(value, format, culture)
*/
DECLARE @datetime DATETIMEOFFSET = SYSDATETIMEOFFSET()
SELECT FORMAT(@datetime,'zz') ,
		FORMAT(@datetime,'zzz')
DECLARE @date DATE = GETDATE()
SELECT FORMAT(@date,'dd/MM/yyyy')