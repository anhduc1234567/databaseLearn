SELECT 
	St.StudentId,
	St.BirthDate,
	St.Address,
	St.FirstName +' '+ St.LastName +' '+ St.MidName AS FullName
--	COUNT(FirstName) AS NumOfName 
FROM 
	Students AS St