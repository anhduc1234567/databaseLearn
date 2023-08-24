--Xóa bản ghi trùng lặp
--C1:
WITH Duplicates AS(
	SELECT FirstName,LastName,PhoneNumber,Regular,
	--FROM Person
	ROW_NUMBER() OVER(
		PARTITION BY
		 FirstName,LastName,PhoneNumber,Regular
		 ORDER BY
		 FirstName,LastName,PhoneNumber,Regular
		)Occ
	FROM Person
)
DELETE FROM Duplicates
WHERE Occ > 1
--c2
DELETE FROM 
    Test
WHERE
    Id NOT IN(
        SELECT MIN(t.Id) MinId
        FROM
           Test t
        GROUP BY
            t.Col1,
            t.Col2
    )