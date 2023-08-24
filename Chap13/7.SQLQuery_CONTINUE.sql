--CONTINUE
/*
WHILE condition
BEGIN
    -- statements
    IF some_condition
        CONTINUE;
    -- statements for skipping if some_condition is meet
END*/
--vDLiệt kê các số nguyên chẵn trong đoạn từ a đến b với a <= b bất kì cho trước.
BEGIN
	DECLARE @a INT = 0
	DECLARE @b INT = 10
	WHILE @a < @b
	BEGIN
		IF @a % 2 =0
		BEGIN
		PRINT STR(@a)
		SET @a += 1
		END
		ELSE
		BEGIN
		SET @a += 1
		CONTINUE
		END
	END


END