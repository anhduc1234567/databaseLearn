-- Toán Tử OR
--VD1: cho biết thông tin các sinh viên hoặc có địa chỉ ở Hà Nội hoặc có địa chỉ ở Đà Nẵng hoặc có địa chỉ ở Hồ Chí Minh.
--SELECT * FROM Student WHERE Address = N'Đà Nẵng' or Address = N'Hà Nội' or Address = N'Hồ Chí Minh'
--VD2Cho biết thông tin các sinh viên thỏa mãn các điều kiện: hoặc sinh vào tháng 5 hoặc có điểm TB >= 3.2. Kết quả sắp xếp tăng dần theo mã sinh viên.
--SELECT * FROM Student WHERE MONTH(BirthDate) = 5 or Gpa >= 3.6
--VD3: Hãy cho biết thông tin các sinh viên thỏa mãn điều kiện: hoặc có tên dài nhất hoặc có điểm TB cao nhất.
SELECT * FROM Student WHERE Gpa = (SELECT MAX(Gpa) FROM Student) or LEN(FullName) = (SELECT TOP 1 LEN(FullName) FROM Student ORDER BY LEN(FullName) DESC)
