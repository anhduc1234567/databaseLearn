/*
\CHECKSUM tính toán một giá trị băm gọi là checksum dựa trên danh sách đối số cho trước.
Sử dụng giá trị checksum để xây dựng chỉ số băm. Một chỉ số băm có thể được sử dụng cho việc tìm kiếm tương đương trên các cột của bảng.
Hàm CHECKSUM_AGG() sử dụng để trả về giá trị checksum của tập các giá trị cho trước trong một cột.
Cú pháp của hàm:
CHECKSUM_AGG([ALL | DISTINCT] expression)

*/
SELECT 
    Gpa, COUNT(Gpa) AS NumOfStudent
INTO
    TblTmp
FROM
    Students
GROUP BY
    Gpa

-- Tìm giá trị checksum
SELECT 
    CHECKSUM_AGG(NumOfStudent) numofstudent_checksum_agg
FROM
    TblTmp