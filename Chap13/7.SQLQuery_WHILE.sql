--WHILE
--vd1:Liệt kê các số nguyên tố nằm trong đoạn từ 1 đến 99.
/*BEGIN
	DECLARE @start INT = 1
	DECLARE @end INT = 99
	DECLARE @number INT = 1
	WHILE @number <= @end 
	BEGIN
		DECLARE @isPrime BIT = 1
		IF @number >= 2
		BEGIN
			DECLARE @count INT = 2
			WHILE @count < @number - 1
			BEGIN
				IF (@number % @count = 0)
				BEGIN
				SET @isPrime = 0
				END
				SET @count += 1
			END
			IF @isPrime = 1
			PRINT STR(@number,2)

		END
		SET @number += 1
	END
END*/

--VD2:Tìm các số chính phương trong đoạn [1, 99].
/*BEGIN
	DECLARE @start INT = 1
	DECLARE @end INT = 99
	DECLARE @number INT = 1
	WHILE @number <= @end 
	BEGIN
		DECLARE @square INT 
		SET @square = SQRT(@number)
		IF( @square * @square = @number)
		BEGIN
		PRINT STR(@number,2)
		END
		SET @number += 1

	END
END*/
--VD4:Vẽ hình tam giác vuông góc trái dưới chiều cao h = 5:
/*BEGIN
	DECLARE @height INT = 7
	DECLARE @count INT = 1
	WHILE @count <= @height
	BEGIN 
		DECLARE @h1 INT = @count
		DECLARE @line VARCHAR(100) = ''
		WHILE @h1 > 0
			BEGIN
			SET @line = CONCAT(@line, ' * ');
			SET @h1 -= 1
			END
		PRINT @line
		SET @count += 1
	END
END*/
--vd5:Vẽ hình chữ nhật đặc bằng các dấu *. Ví dụ chiều rộng = chiều cao = 5:
/*BEGIN
	DECLARE @height INT = 7
	DECLARE @weight INT = 5
	DECLARE @count INT = 1
	WHILE @count <= @height
	BEGIN 
		DECLARE @h1 INT = @weight
		DECLARE @line VARCHAR(100) = ''
		WHILE @h1 > 0
			BEGIN
			SET @line = CONCAT(@line, ' * ');
			SET @h1 -= 1
			END
		PRINT @line
		SET @count += 1
	END
END*/
--vd6:Vẽ hình chữ nhật rỗng bằng các dấu * kích thước m x n. Ví dụ m = n = 5:
/*BEGIN
	DECLARE @height INT = 7
	DECLARE @weight INT = 5
	DECLARE @count INT = 1
	WHILE @count <= @height
	BEGIN 
		DECLARE @h1 INT = @weight
		DECLARE @line VARCHAR(100) = ''
		WHILE @h1 > 0
			BEGIN
			if @count = 1 OR @count =@height OR @h1 = 1 OR @h1 = @weight
			BEGIN
			SET @line = CONCAT(@line, ' * ');
			END
			ELSE 
			BEGIN
			SET @line = CONCAT(@line, '   ');
			END

			SET @h1 -= 1
			END
		PRINT @line
		SET @count += 1
	END
END*/