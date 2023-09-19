/*
Hàm REPLACE() dùng để thay thế chuỗi kí tự con nào đó trong một chuỗi kí tự cho trước bằng một chuỗi con khác.
Cú pháp của hàm: REPLACE(input_string, substring, new_substring)
Trong đó:
input_string là bất kì biểu thức nào cần tìm và thay thế dữ liệu trong nó.
substring là chuỗi con cần thay thế.
new_substring là chuỗi con mới để thế chỗ cho chuỗi cũ.
Hàm REPLACE() trả về một chuỗi mới trong đó tất cả các chuỗi con cũ đc thay thế bằng chuỗi con mới.*/
SELECT REPLACE('Nguyen duc aanh','a','duc')