/*Biểu thức COALESCE nhận vào một loạt các tham số, đánh giá chúng theo thứ tự và trả về giá trị tham số đầu tiên khác NULL.
Cú pháp:COALESCE(e1, [e2, ..., en])*/
--Ví dụ tính lương tương ứng

SELECT 
	sf.FirstName,
	COALESCE(s.TargetId,1) 
	AS TargetId ,
	s.BaseAmount,
	s.BaseSalary,
	s.BaseAmount * t.Percentage AS Commision,
	s.BaseAmount * t.Percentage + s.BaseSalary AS TotalSalary
FROM Salaries s, Targets t,Staffs sf
WHERE 
	t.TargetId = COALESCE(s.TargetId,1) AND sf.StaffId = s.StaffId