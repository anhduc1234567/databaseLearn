--Tổng quan về VIEW 
/*
Khi thực hiện truy vấn với câu lệnh SELECT, ta nhận được một tập kết quả trả về.
Nếu muốn tiếp tục sử dụng các kết quả đó ở các lần sau, ta có thể lưu câu truy vấn lại và chạy lại khi cần.
Tuy nhiên SQL Server cung cấp sẵn một cách thức tốt hơn để lưu kết quả truy vấn trong CSDL. Đó là thông qua các view.
Một view là một câu truy vấn được đặt tên lưu trữ trong CSDL cho phép bạn tham chiếu tới nó khi cần.
Ví dụ sau tạo một view StudentInfo:
CREATE VIEW StudentInfo
AS
SELECT
    StudentId,
    LastName,
    FirstName,
    Address,
    Major,
    Gpa
FROM
    Students
*/