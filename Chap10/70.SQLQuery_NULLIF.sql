/*NULLIF là bi?u th?c nh?n vào hai tham s? và tr? v? giá tr? NULL n?u hai bi?u th?c có giá tr? t??ng ???ng.
N?u không bi?u th?c tr? v? giá tr? tham s? th? nh?t.
Cú pháp:
NULLIF(expression1, expression2)*/
--VD Tìm nhân viên có s?t r?ng ho?c NULL
/*SELECT * 
FROM Staffs
WHERE
	NULLIF(PhoneNumber,'') IS NULL*/
