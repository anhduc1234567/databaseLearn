/*
Biểu thức CASE 
CASE [input]
    WHEN e1 THEN r1 
    WHEN e2 THEN r2 
    WHEN e3 THEN r3
    ... 
    WHEN en THEN rn 
    [ELSE rx] 
END
*/
--VD1:Bây giờ ta chuyển trạng thái đăng ký từ tiếng Việt sang tiếng Anh:
/*SELECT 
	CASE RegisterStatus 
	WHEN  N'Đã Hủy' THEN N'Cancel'
	WHEN  N'Lỗi Đăng ký' THEN N'Error'
	WHEN  N'Thành công' THEN N'Success'
	END RegisterStatus,
	COUNT(RegisterStatus) AS Num
FROM Registers
GROUP BY RegisterStatus*/
/*SELECT 
	SUM(CASE RegisterStatus 
		WHEN N'Đã Hủy' THEN 1 ELSE 0 
		END ) AS Cancel,
	SUM(CASE RegisterStatus 
		WHEN N'Lỗi Đăng ký' THEN 1 ELSE 0
		END ) AS Error,
	SUM(CASE RegisterStatus 
		WHEN N'Thành Công' THEN 1 ELSE 0 
		END ) AS Success
FROM Registers*/
--Ví dụ: Phân loại học lực cho các sinh viên trong bảng Student:
SELECT *,
	CASE
	WHEN s.Gpa >= 3.6 THEN N'Xuất xác'
	WHEN S.Gpa >= 3.2 AND s.Gpa < 3.6 THEN N'Gỉoi'
	WHEN s.Gpa >= 2.8 THEN N'Khá'
	WHEN s.Gpa >= 2.0 THEN N'Trung bình'
	WHEN s.Gpa >= 0 THEN N'Yếu'
	END AS Capacity
    
FROM Students s


