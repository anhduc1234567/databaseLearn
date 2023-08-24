/*Kiểu dữ liệu DECIMAL sử dụng để lưu trữ các giá trị số thực có độ chính xác với tỉ lệ cố định.
Cú pháp để khai báo một cột nào đó là kiểu DECIMAL: DECIMAL(p, s)
Trong đó:
p là độ chính xác, tức tổng số các ký tự của phần thực sẽ được lưu trữ. Giá trị này nằm trong đoạn từ 1 đến 38. Giá trị mặc định là 38.
s là số ký tự phần thập phân. Giá trị của s từ 0 đến p. Giá trị của s chỉ được xác định khi giá trị của p được chỉ định. Mặc định s bằng 0.*/

--CREATE TABLE tabletest4 (int_col INT, dec_col DECIMAL(5,2))
INSERT INTO tabletest4 (int_col,dec_col) VALUES (2,883.12123456734)