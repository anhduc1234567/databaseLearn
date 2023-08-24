--Toán tử INTERSECT dùng để kết hợp các tập kết quả của hai hay 
--nhiều câu truy vấn và trả về các dòng duy nhất có chung trong tất cả các tập kết quả.
--1.Xét bảng Students và bảng Customers. Hãy cho biết họ và tên những người ở cùng thành phố? Đó là thành phố nào?
/*SELECT FirstName,LastName,Address
FROM Students
WHERE Address IN (
	SELECT Address
	FROM Students
	INTERSECT
	SELECT City
	FROM Customers
)
UNION ALL
SELECT FirstName,LastName,City
FROM Customers
WHERE City IN (
	SELECT Address
	FROM Students
	INTERSECT
	SELECT City
	FROM Customers
)
*/
--2. Xét bảng Customers và Stores. Hãy cho biết tên các cửa hàng cùng quận với khách hàng, 
-- cho biết đó là quận nào?
/*SELECT StoreName,District
FROM Stores
WHERE
	District IN (
		SELECT District
		FROM Stores
		INTERSECT
		SELECT District
		FROM Customers
	)*/
--3. Xét bảng Customers và Stores. 
-- Hãy cho biết họ và tên các khách hàng cùng quận với quận có cửa hàng công nghệ đang mở, cho biết đó là quận nào?
SELECT *
FROM Customers
WHERE
	District IN (
		SELECT District
		FROM Stores
		INTERSECT
		SELECT District
		FROM Customers
	)