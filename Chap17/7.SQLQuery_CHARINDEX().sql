/*
Hàm CHARINDEX() dùng để trả về số nguyên đại diện cho vị trí đầu tiên của chuỗi con cần tìm trong chuỗi kí tự cho trước.
Hàm này không phân biệt chữ hoa, thường.
Cú pháp:
CHARINDEX(substring, string, startIndex)

substring là chuỗi con cần tìm trong chuỗi chính.
string là chuỗi mẹ chứa chuỗi con cần tìm.
startIndex là vị trí bắt đầu tìm kiếm. Một giá trị tùy chọn thường tính từ 1.
*/
SELECT CHARINDEX('U','ANH DUC adu',6)