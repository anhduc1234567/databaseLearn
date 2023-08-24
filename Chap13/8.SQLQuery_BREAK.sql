--Hiển thị ra màn hình k số nguyên tố đầu tiên thỏa mãn >= number nào đó cho trước. Giả sử number = 25;
--lệnh BREAK
BEGIN
	DECLARE @number INT =25
	DECLARE @k INT = 12
	DECLARE @count INT = 1
	DECLARE @i INT = @number
	WHILE @k > 0
	BEGIN
		DECLARE @square INT = SQRT(@i)
		DECLARE @j INT = 2
		DECLARE @isPrime BIT = 1
		WHILE @j <= @square
		BEGIN
			IF @i % @j = 0
			BEGIN
			SET @isPrime = 0;
			BREAK;
			END
			SET @j += 1
		END
		IF @isPrime = 1
		BEGIN
		PRINT STR(@i,2)
		SET @count += 1
		END
		IF @count = @k
		BEGIN
		BREAK
		END
		SET @i += 1
	END



END