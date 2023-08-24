/* Ràng buộc khóa phụ
CONSTRAINT [fk_constraint_name] 
FOREIGN KEY(foreign_key_columns) 
REFERENCES parent_table_name(parent_key_columns)
ON UPDATE action
ON DELETE action;
ON DELETE NO ACTION: SQL Server sẽ sinh một thông báo lỗi và rollback hành động xóa dòng dữ liệu trong bảng cha.
ON DELETE CASCADE: SQL Server xóa các dòng trong bảng con tương ứng với hàng bị xóa trong bảng cha.
ON DELETE SET NULL: SQL Server gán giá trị NULL cho dòng tương ứng trong bảng 
con nếu dữ liệu trong bảng cha tương ứng bị xóa. Để sử dụng hành động này thì cột khóa ngoại phải chấp nhận cho phép NULL.
ON DELETE SET DEFAULT: SQL Server gán giá trị mặc định cho các cột nếu giá trị
dòng tương ứng trong bảng cha bị xóa. Để đạt được hành động này thì cột khóa ngoại phải 
thiết lập giá trị mặc định. Các cột có thể NULL sẽ nhận giá trị NULL nếu ta không chỉ định giá trị mặc định cho nó.
ON UPDATE NO ACTION: SQL Server sẽ sinh lỗi khi dữ liệu trong bảng cha được update.
ON UPDATE CASCADE: SQL Server sẽ cập nhật dòng dữ liệu tương ứng trong bảng con khi dữ liệu trong bảng cha được cập nhật.
ON UPDATE SET NULL: SQL Server sẽ gán giá trị NULL cho cột khóa ngoại khi dữ liệu 
tương ứng trong bảng cha được cập nhật. Lưu ý rằng cột khóa ngoại phải chấp nhận giá trị NULL để có thể sử dụng chức năng này.
ON UPDATE SET DEFAULT: SQL Server sẽ gán giá trị mặc định cho cột khóa ngoại khi dòng dữ liệu tương ứng trong bảng cha được cập nhật.
*/

--CREATE SCHEMA Product
/*CREATE TABLE Product.Providers(
	IdProviders VARCHAR(20) PRIMARY KEY,
	Name NVARCHAR(200),
	Address NVARCHAR(200),
	Phone VARCHAR(10),
	TaxCode VARCHAR(20),
)
CREATE TABLE Product.Products(
	IdProducts INT PRIMARY KEY,
	Name NVARCHAR(200),
	Quantity INT DEFAULT 0,
	Price FLOAT DEFAULT 0
)
*/
--DROP TABLE Product.ProviderProduct
/*CREATE TABLE Product.ProviderProduct(
	IdProviderProduct INT PRIMARY KEY,
	IdProducts INT,
	IdProviders VARCHAR(20),
	ProvideAt DATETIME DEFAULT GETDATE(),
	FOREIGN KEY (IdProducts) REFERENCES  Product.Products(IdProducts),
	FOREIGN KEY (IdProviders) REFERENCES  Product.Providers(IdProviders)
	ON UPDATE CASCADE
	ON DELETE CASCADE
)*/
/*
INSERT INTO 
    Product.Products(IdProducts, Name, Price, Quantity)
VALUES
    (1000, N'iPhone 15 Pro Max', 37500000, 120),
    (1001, N'iPhone 15 Pro', 32500000, 100),
    (1002, N'iPhone 15', 28500000, 150),
    (1003, N'Samsung Galaxy S24', 35000000, 150);
*/
/*INSERT INTO 
    Product.Providers(IdProviders, Name, Address, Phone, TaxCode)
VALUES
    ('AP100', N'Apple Inc', 'Cupertino California USA', '+14089961010', '0313510827'),
    ('SAM100', 'Samsung ELECTRONICS', '416, Maetan 3-Dong, Yeongtong-Gu, Suwon, Gyeonggi-Do, South Korea', 
    '1800 588 889', '2300325764'),
    ('OPP100', 'Oppo', '448A Nguyễn Tất Thành, Phường 18, Quận 4, Thành phố Hồ Chí Minh', '1800577776', '0312059023');*/
-- chèn dữ liệu vào bảng cung ứng
/*INSERT INTO
    Product.ProviderProduct(IdProducts, IdProviders)
VALUES
    (1000, 'AP100'),
    (1001, 'AP100'),
    (1002, 'Ap100'),
    (1003, 'SAM100');*/
--TRUNCATE TABLE Product.ProviderProduct
/*DELETE FROM Product.Providers
WHERE IdProviders = 'AP100'
-- dữ liệu chèn vào bảng con phải có trong bảng cha
*/
