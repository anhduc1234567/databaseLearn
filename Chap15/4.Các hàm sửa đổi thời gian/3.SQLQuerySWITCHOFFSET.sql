/*Hàm SWITCHOFFSET() trả về một giá trị kiểu DATETIMEOFFSET chuyển vùng từ múi giờ này sang múi giờ kia.
Cú pháp:
SWITCHOFFSET( expression, time_zone )

expression: một biểu thức có thể chuyển thành giá trị kiểu DATETIMEOFFSET.
time_zone là các kí tự như +|-TZH:TZM hoặc giá trị giờ phút nguyên có dấu như +07:00, -07:00 hay 420.
*/SELECT SWITCHOFFSET(SYSDATETIMEOFFSET(),'+00:00')