--FILTER INDEX
/*CREATE INDEX index_name 
ON table_name(column_list) 
WHERE predicate;*/
--DROP INDEX IX_Customers_FirstName ON Customers

/*CREATE INDEX IX_Customers_FirstName_filter
ON Customers(FirstName)
INCLUDE(LastName, City, District)
WHERE FirstName = '%n%'
*/
SELECT LastName, FirstName, City, District FROM Customers WHERE FirstName LIKE '%n%'