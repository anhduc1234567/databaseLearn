/*TINYINT kích thước 1 byte, giá trị lưu trữ từ 0 tới 255.
SMALLINT kích thước 2 byte lưu trữ các giá trị từ -2^15 tới 2^15 – 1. ~32768
INT kích thước 4 byte lưu trữ các giá trị từ -2^31 tới 2^31 – 1.
BIGINT kích thước 8 byte lưu trữ được các giá trị trong khoảng -2^63 tới 2^63 – 1.*/

--CREATE TABLE tabletest2 (tiny_col TINYINT,big_col BIGINT, int_col INT, small_col SMALLINT)
INSERT INTO tabletest2 (tiny_col ,big_col , int_col , small_col )
VALUES(192,123456789765432,2100000000,30000)