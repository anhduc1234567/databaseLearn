
/*SELECT
    columns
FROM
    tables
ORDER BY
    columns [ASC|DESC]
OFFSET offset_row {ROW | ROWS} bỏ đi n hàng
FETCH {FIRST | NEXT} fetch_row {ROW | ROWS} ONLY lấy từ n hàng tiếp theo
*/
--Lấy 4 môn học có số tín chỉ cao nhất.
/*SELECT *
FROM Subject
ORDER BY
	Credit DESC
OFFSET 0 ROWS
FETCH NEXT 4 ROWS ONLY*/
--Lấy 5 môn học sau 5 môn học đầu tiên có số tiết học cao nhất.
/*
SELECT *
FROM Subject
ORDER BY
	NumOfLesson DESC
OFFSET 5 ROWS 
FETCH NEXT 5 ROWS ONLY
*/
