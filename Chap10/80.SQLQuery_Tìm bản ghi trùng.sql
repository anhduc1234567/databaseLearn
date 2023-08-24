--Tìm bản ghi trùng
--Tìm bản ghi trùng lặp với GROUP BY

/*CREATE TABLE Test1(
    Id INT PRIMARY KEY IDENTITY(1, 1),
    Col1 INT,
    Col2 INT
);
-- chèn dữ liệu vào bảng:*/
/*INSERT INTO
    Test1(Col1, Col2)
VALUES
    (1,1),
    (1,2),
    (1,3),
    (2,1),
    (1,2),
    (1,3),
    (2,1),
    (2,2),
    (1,5),
    (1,6),
    (1,7),
    (2,1),
    (1,2),
    (1,9),
    (2,5),
    (2,2);*/
SELECT Col1,Col2,COUNT(*) AS Num
FROM Test1
GROUP BY Col1,Col2
--HAVING COUNT(*) > 1