/*Hàm DATENAME() trả về một chuỗi kí tự đại diện cho phần date được chỉ định trong tham số cho trước.
Cú pháp của hàm: DATENAME(date_part, input_date)
Trong đó:
date_part là phần của date mà ta muốn xác định. Chi tiết xem bảng dưới.
input_date là một string biểu diễn thông tin ngày giờ hoặc một biểu thức trả về giá trị kiểu TIME, DATE, DATETIME, SMALLDATETIME hoặc DATETIME2, DATETIMEOFFSET.
Các giá trị có thể sử dụng trong date_part:*/
  /*
  - year  yy,yyyy
  - quarter qq,qqqq
  - month    m,mm
  -dayofyear  dy
  - day   d, đd
  - week      wk,ww
  - weekday    dw
  - minute     mi,m
  - second     ss,s
  - hour             h,hh
  - millisecond      ms
  - microsecond       mcs
  - nanosecond    ns
  - TZoffset      tz
  - IOS_WEEK        isowk,isoww
*/
SELECT DATENAME(YY,GETDATE()),
			 DATENAME(mm,GETDATE())	,
			 DATENAME(dd,GETDATE()),
			 DATENAME(dw,GETDATE()),
			 DATENAME(dy,GETDATE()),
			 DATENAME(qq,GETDATE()),
			 DATENAME(HOUR,GETDATE())