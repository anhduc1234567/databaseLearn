/*UPDATE
    table1
SET
    colums = values
FROM
    table1
    [INNER|LEFT] JOIN table2 
    ON join_predicate
WHERE
    where_predicate;*/
--1.Xóa và tạo lại các bảng Salaries, Targets.
/*CREATE TABLE Targets(
    TargetId INT PRIMARY KEY,
    Percentage DECIMAL(4, 2) NOT NULL DEFAULT 0
);
INSERT INTO Targets(TargetId,Percentage)
VALUES
	(1, 0.1),
    (2, 0.2),
    (3, 0.3),
    (4, 0.4),
    (5, 0.5),
    (6, 0.6),
    (7, 0.7),
    (8, 0.8),
    (9, 0.9);
CREATE TABLE Salaries (
	SalaryId INT PRIMARY KEY IDENTITY(100, 1),
	StaffId INT,
	TargetId INT,
	BaseAmount DECIMAL(10, 2) NOT NULL DEFAULT 0,
    BaseSalary DECIMAL(10, 2) NOT NULL DEFAULT 0,
    Commission DECIMAL(10, 2) NOT NULL DEFAULT 0,
    FOREIGN KEY(TargetId) REFERENCES Targets(TargetId),
    FOREIGN KEY(StaffId) REFERENCES Staffs(StaffId)
)*/
/*INSERT INTO Salaries(StaffId,TargetId,BaseAmount,BaseSalary) VALUES   (1, 2, 21400000, 4500000),
    (6, 3, 39500000, 5500000),
    (7, 4, 48500000, 6500000),
    (9, 5, 57100000, 7500000),
    (8, 1, 11500000, 4500000),
    (10, 2, 27500000, 4500000),
    (11, 3, 36500000, 5500000),
    (18, 5, 56800000, 8500000);*/
--2.Tính tiền hoa hồng cho các nhân viên có trong bảng Salaries.
/*UPDATE Salaries
SET Salaries.Commission = s.BaseAmount * COALESCE(t.Percentage, 0.1)
FROM 
	Salaries s 
	JOIN Targets t
	ON s.TargetId = t.TargetId*/
--3.Thêm mới nhân viên vào bảng Salaries và chưa chỉ định target cụ thể.
-- Tính tiền hoa hồng cho các nhân viên trong bảng Salaries.
/*INSERT INTO
    Salaries(StaffId, BaseAmount, BaseSalary)
VALUES
    (19, 11400000, 4500000),
    (20, 9500000, 4500000),
    (21, 8500000, 4500000),
    (22, 7100000, 4500000),
    (23, 61500000, 4500000);*/
/*UPDATE Salaries
SET Salaries.Commission = s.BaseAmount * COALESCE(t.Percentage, 0.1)
FROM 
	Salaries s 
	LEFT JOIN Targets t
	ON s.TargetId = t.TargetId*/
--6.Cho biết thông tin các nhân viên, doanh thu, tiền hoa hồng, mức lương và tổng lương của những người có trong bảng Salaries
SELECT sf.StaffId,sf.FirstName,sf.LastName,sf.Email,sf.PhoneNumber,s.BaseAmount,s.BaseSalary,s.Commission
	,s.Commission +s.BaseSalary AS Total
FROM Staffs sf
	INNER JOIN Salaries s
	ON s.StaffId = sf.StaffId