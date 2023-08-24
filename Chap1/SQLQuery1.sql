--SELECT * FROM Person
--SELECT Id, FirstName, Age FROM Person
--SELECT colums FROM table_name WHERE conditions
SELECT 
	Id, FullName,Address 
FROM 
	Student 
WHERE 
	Major == 'CNTT'