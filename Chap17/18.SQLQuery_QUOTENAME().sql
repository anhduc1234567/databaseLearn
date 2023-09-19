/*
Trả về chuỗi kí tự với cặp dấu phân tách bao ở đầu.
Theo mặc định cặp dấu phân tách là cặp móc vuông, ta có thể chỉ định cặp dấu bất kì nếu muốn.
Cú pháp:
QUOTENAME(string, quote_char)
Trong đó:
string là chuỗi kí tự cần bao bởi cặp dấu phân tách. Đây là giá trị bắt buộc, có thể là tên biến, chuỗi kí tự hằng, tên cột kiểu chuỗi kí tự nào đó.
quote_char là kí tự dùng để bọc lấy string cho trước. Đây là giá trị tùy chọn, có thể là ”, “”, [], “, {}, (), 
*/
SELECT QUOTENAME('Students','{');
