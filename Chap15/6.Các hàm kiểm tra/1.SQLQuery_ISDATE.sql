
/*
Hàm ISDATE() kiểm tra xem tham số nhận được có phải là DATE, TIME hay DATETIME không.
Cú pháp: ISDATE(expression)
Hàm trả về kiểu INT, nếu giá trị truyền vào là một trong các giá trị hợp lệ ở kiểu trên thì hàm sẽ trả về kết quả 1, ngược lại 0.
Giá trị truyền vào có thể là một chuỗi kí tự hoặc biểu thức có thể chuyển sang chuỗi kí tự.
Biểu thức có thể là kiểu DATE, TIME nhưng không thể là DATETIME hay SMALLDATETIME.
Nếu biểu thức là kiểu DATETIME2 thì hàm sẽ trả về giá trị 0.
Nếu là kiểu DATE thì giới hạn hợp lệ từ 0001-01-01 đến 9999-12-31. Nếu là kiểu DATETIME thì giới hạn là 1753-01-01 đến 9999-12-31.
Ví dụ minh họa
*/
SELECT
    ISDATE('2025-13-24') AS IsValidDate