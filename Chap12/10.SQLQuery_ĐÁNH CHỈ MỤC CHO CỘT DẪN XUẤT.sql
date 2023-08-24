-- ĐÁNH CHỈ MỤC CHO CỘT DẪN XUẤT
-- Tạo cột dẫn xuất
--ALTER TABLE Students
--ADD FullName AS FirstName + MidName + LastName
--CREATE INDEX IX_Full_Name
--ON Students(FullName)
SELECT FirstName,Major,PhoneNumber,BirthDate FROM Students WHERE FullName = 'TrangQuỳnhLê'
