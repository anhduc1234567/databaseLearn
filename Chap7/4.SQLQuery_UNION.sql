/*query1
UNION
query2*/
--1. Hãy cho biết tên, số điện thoại của tất cả các sinh viên, nhân viên và khách hàng không tính các bản ghi trùng lặp.
SELECT FirstName,PhoneNumber 
FROM Students 
UNION ALL
SELECT FirstName,PhoneNumber
FROM Staffs
UNION ALL
SELECT FirstName,PhoneNumber
FROM Customers

