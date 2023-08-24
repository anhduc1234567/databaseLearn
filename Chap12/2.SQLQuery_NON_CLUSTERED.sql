-- NON_CLUSTERED INDEX
--CREATE [NONCLUSTERED] INDEX index_name 
--ON table_name(column_list);
--VD:
--CREATE NONCLUSTERED INDEX IX_phonenumber_and_name
--ON dbo.Students(PhoneNumber,FirstName,LastName)
SELECT FirstName,PhoneNumber,Major FROM Students WHERE FirstName LIKE 'N%' AND LastName Like '%N%'