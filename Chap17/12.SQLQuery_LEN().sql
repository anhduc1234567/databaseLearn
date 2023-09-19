
/*Hàm LEN() sử dụng để trả về số lượng kí tự có trong tham số không tính các kí tự khoảng trắng ở cuối xâu kí tự nhận được.
Cú pháp: LEN(input_string)
input_string là một chuỗi kí tự hoặc biểu thức hoặc tên cột hoặc chuỗi nhị phân, tên biến lưu chuỗi kí tự.
Hàm LEN() trả về giá trị kiểu BIGINT nếu input_string ở kiểu VARCHAR(max), NVARCHAR(max) hoặc VARBINARY(max). Nếu không hàm sẽ trả về kiểu INT.
*/
SELECT LEN('   NGUYEN duc')