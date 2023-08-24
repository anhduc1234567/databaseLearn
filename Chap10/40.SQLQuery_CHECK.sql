--Ràng buộc CHECK
/*DROP TABLE IF EXISTS sale
CREATE TABLE sale(
	Id INT PRIMARY KEY IDENTITY (100,1),
	Name NVARCHAR(200),
	Price INT NOT NULL --CHECK(Price>0)
	CONSTRAINT CK_notzeno CHECK(Price>0)
)*/
--vô hiệu hóa
/*ALTER TABLE table_name
NOCHECK CONSTRAINT constraint_name;*/
/*ALTER TABLE sale
NOCHECK CONSTRAINT CK_notzeno*/
INSERT INTO  sale(Name,Price,PriceSale)
VALUES ('2kimd',100,50)
-- thêm vào bảng chưa có 
/*ALTER TABLE sale

ADD PriceSale INT CONSTRAINT CK_price CHECK(PriceSale > 0)
*/
/*ALTER TABLE sale
 ADD CONSTRAINT pricesaleless CHECK (PriceSale < Price)*/
 /*ALTER TABLE sale
 ADD CONSTRAINT CK_ CHECK (Price > 0)*/