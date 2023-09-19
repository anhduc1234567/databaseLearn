/*
Hàm VAR() là một hàm tổng hợp sử dụng để tính toán phương sai thống kê của toàn bộ các bản ghi trong bảng được chỉ định.
Cú pháp của hàm: VAR(column_name).
Trong đó, hàm VAR() chỉ áp dụng với các cột kiểu số.
Mặc định hàm này tự bỏ qua giá trị NULL.
Công thức liên quan:
Tính giá trị trung bình: TB =  tổng tất cả các giá trị trong cột
Tính phương sai: V = ((giá trị gốc 1 – TB)^2 + (giá trị gốc 2- TB)^2 + …)) / (Tổng số phần tử – 1)*/
--SELECT 
  --  VAR(Gpa) AS GpaVariance
--FROM
  --  Students