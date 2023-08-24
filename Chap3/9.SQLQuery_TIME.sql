-- kiểu dữ liệu TIME hh:mm:ss
--CREATE TABLE learn_time (id INT, name NVARCHAR, date_start DATE, date_end DATE, time_start TIME, time_end TIME )
--INSERT INTO learn_time(id,name,date_start,date_end,time_start,time_end)
--VALUES (102,N'Siêu Sale đại hạ giá duy nhất ngày 5/5','2023/5/5','2023/5/5','05:55:55','15:55:55')
SELECT 
	*
FROM learn_time

WHERE time_start LIKE '%00:00:00%'