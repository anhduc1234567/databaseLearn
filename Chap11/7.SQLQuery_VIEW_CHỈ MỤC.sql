/*Để tạo view đánh chỉ mục ta thực hiện 2 bước sau:
B1: tạo một view sử dụng tùy chọn WITH SCHEMABINDING để liên kết view với lược đồ của bảng phía bên dưới.
B2: tạo một unique clustered index cho view. Điều này sẽ làm cho view được vật liệu(dữ liệu) hóa.
Do tùy chọn WITH SCHEMABINDING nên nếu muốn thay đổi cấu trúc của bảng liên quan đến định 
nghĩa của view đánh chỉ mục ta cần xóa bỏ view đánh chỉ mục trước khi áp dụng bất kì thay đổi nào.
SQL Server yêu cầu tất cả các bảng tham gia vào tham chiếu tạo view đánh chỉ mục phải 
có cấu trúc hai phần dạng: schema_name.table_name. Ví dụ dbo.Subject, sales.Staffs.*/
/*CREATE VIEW StaffsStore
WITH SCHEMABINDING
AS 
	SELECT 
		sf.StaffId,sf.FirstName,sf.Email,sf.PhoneNumber,s.StoreName,s.City
	FROM dbo.Staffs sf
		INNER JOIN dbo.Stores s
		ON sf.StoreId = s.StoreId*/
--INSERT INTO Staffs(FirstName,LastName,Email,PhoneNumber,Active,StoreId,ManagerId) VALUES ('Nguyễn','Đức','duc@gmail.com','0993356572','True',3,99)
--SELECT * FROM StaffsStore