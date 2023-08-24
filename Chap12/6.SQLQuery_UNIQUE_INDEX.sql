-- Chỉ mục UNIQUE
/*CREATE UNIQUE INDEX index_name 
ON table_name(column_list);*/
--CREATE UNIQUE INDEX IX_PhoneNumber
--ON Students(PhoneNumber)
INSERT INTO Students(StudentId,FirstName,MidName,LastName,Address,Major,BirthDate,PhoneNumber,Gpa) VALUES
		('ST100203','Đức','Nguyễn','Anh','Hà Nội','CNTT','2021-08-20','0398123123',3.2)