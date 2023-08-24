-- BEGIN .. 
/*
Câu lệnh BEGIN…END sử dụng để định nghĩa khối lệnh bao gồm một tập các lệnh SQL chạy cùng nhau.
Một khối lệnh còn được gọi là một batch – lô, loạt.
Nói cách khác, nếu câu lệnh là một câu hoàn chỉnh thì BEGIN…END cho phép ta định nghĩa một đoạn lệnh.
Cú pháp:
*/
/*BEGIN
    sql_statement | block
END*/
BEGIN
    DECLARE @major VARCHAR(200) = 'CNTT';
    DECLARE @numberOfGoodITStudent INT;
    DECLARE @gpa FLOAT = 3.2;

    -- select
    SELECT
        *
    FROM
        Students
    WHERE
        Major = @major
    AND
        Gpa >= @gpa;

    -- đếm số lượng SV CNTT
    SELECT
        @numberOfGoodITStudent = COUNT(*)
    FROM
        Students
    WHERE
        Major = @major
        AND
        Gpa >= @gpa;

    -- hiển thị ra
    SELECT @numberOfGoodITStudent NumberOfGoodITStudent;
END;