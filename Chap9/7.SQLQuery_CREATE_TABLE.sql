--Tạo bảng lưu trữ thông tin mặt hàng(Mã, tên, hãng sản xuất, loại, giá bán, số lượng, khối lượng, kích thước)
--. Khóa chính là mã mặt hàng tự tăng từ 100.
/*CREATE TABLE Item(
	ItemId INT IDENTITY (100,1) NOT NULL,
	Name NVARCHAR(20),
	Band NVARCHAR(20),
	Type VARCHAR(20),
	Price FLOAT(2),
	Quantity INT DEFAULT 0,
	Weight FLOAT DEFAULT 0,
	Size NVARCHAR(100),
	PRIMARY KEY(ItemId)
)*/
--Tạo bảng khách hàng(mã khách hàng, họ tên khách, địa chỉ, email, số điện thoại, điểm tích lũy, loại khách hàng). 
--Khóa chính là mã khách hàng tự tăng từ 1000.
/*CREATE TABLE Cust (
	IdCus INT IDENTITY (1000,1) PRIMARY KEY,
	Name NVARCHAR(20),
	Address NVARCHAR (20),
	Email VARCHAR(20),
	NumberPhone VARCHAR(20),
	Poin INT DEFAULT 0 NOT NULL,

)*/
--Tạo bảng đặt hàng(mã đặt hàng, mã khách, mã mặt hàng, số lượng, thời gian đặt hàng, trạng thái đặt hàng). 
--Khóa chính là mã đặt hàng tự động tăng cách nhau 2 đơn vị tính từ 1. Khóa ngoại là mã khách, mã mặt hàng.
CREATE TABLE OrderItem(
	Id INT IDENTITY(1,2) NOT NULL PRIMARY KEY,
	IdCut INT NOT NULL,
	IdItem INT,
	Quantity INT DEFAULT 0,
	OrderTime DATETIME DEFAULT GETDATE(),
	Status NVARCHAR(20) DEFAULT  'Success'
	FOREIGN KEY(IdCut) REFERENCES Cust(IdCus) ,
	FOREIGN KEY(IdItem) REFERENCES Item(ItemId) 
)