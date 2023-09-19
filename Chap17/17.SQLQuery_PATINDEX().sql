/*
Hàm PATINDEX() trả về vị trí của một mẫu pattern trong string cho trước.
Nếu không tìm thấy, hàm trả về giá trị 0.
Việc tìm kiếm không phân biệt chữ hoa, thường.
Vị trí các kí tự trong chuỗi kí tự bắt đầu từ 1.
Cú pháp:
PATINDEX(pattern, string)

pattern là bắt buộc. Trong này chứa mẫu cần tìm, bắt buộc phải dùng % ở hai đầu dạng %pattern%. Các kí tự khác có thể dùng:
_ khớp với kí tự đơn.
[abc] khớp với bất kì kí tự nào trong cặp [].
[^abc] khớp với bất kì kí tự nào không phải a, b, c hoặc abc.

*/
SELECT PATINDEX('%anh%','Nguyen duc anh')

SELECT PATINDEX('%[anh]%','Nguyen duc anh')

SELECT PATINDEX('%[^anh]%','Nguyen duc anh')

SELECT PATINDEX('%a_h%','Nguyen duc anh')