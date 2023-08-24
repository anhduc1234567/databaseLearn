/*Các toán tử logic
Toán tử	
Mô tả

ALL

So sánh một giá trị với tất cả các giá trị trong tập nào đó cho trước.
AND

Sử dụng để đảm bảo tất cả các điều kiện phải đồng thời xảy ra.
ANY

So sánh một giá trị với bất kì giá trị có thể nào của một tập cho trước.
BETWEEN	Sử dụng để tìm kiếm các giá trị trong một khoảng được giới hạn từ min đến max.
EXISTS

Sử dụng để tìm kiếm sự hiện diện của một dòng trong bảng được chỉ định sao cho thỏa mãn những tiêu chí đề ra.
IN

So sánh một giá trị với một tập giá trị cho trước.
LIKE

So sánh một giá trị có những điểm tương đồng với các giá trị khác. Còn gọi là so sánh gần đúng.
NOT

Đảo ngược lại ý nghĩa của các toán tử đi kèm. Còn gọi là toán tử phủ định. Ví dụ NOT IN, NOT LIKE, NOT EXISTS.
OR

Kết hợp hai hoặc nhiều điều kiện. Chỉ cần 1 điều kiện được thỏa mãn toán tử sẽ cho kết quả true.
IS NULL

Kiểm tra xem một giá trị cho sẵn có NULL không.
UNIQUE

Sử dụng để tìm kiếm các giá trị duy nhất trong bảng được chỉ định.*/
--VD
--Tìm các sinh viên trong tên có chữ ‘n’ hoặc chữ ‘h’. Sử dụng toán tử OR và LIKE, %:
/*SELECT *
FROM Student
WHERE FullName LIKE '%Hoàng%' OR FullName LIKE '%Vinh%'*/
-- Tìm sinh viên không đăng ký môn học nào
SELECT *
FROM Student
WHERE Id NOT IN (
	SELECT StudentId FROM Register
	)