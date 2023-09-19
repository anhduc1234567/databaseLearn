
/*
Hàm EOMONTH() sử dụng để trả về số lượng ngày của một tháng được chỉ định. Nói cách khác, hàm này cho biết ngày kết thúc của một tháng nào đó là ngày bao nhiêu.
Hàm trả về 1 giá trị DATETIME.
Cú pháp: EOMONTH(start_date [, offset]);
offset là phần tùy chọn, một số nguyên chỉ định số lượng tháng để thêm vào start_date.
*/
SELECT EOMONTH('2023-7-12',1)
SELECT EOMONTH('2023-8-1')