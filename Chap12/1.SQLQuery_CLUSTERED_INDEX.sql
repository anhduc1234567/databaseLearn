/*-Một index là một cấu trúc vật lý liên kết với một bảng hoặc view làm tăng tốc quá trình truy cập các hàng trong bảng hoặc view.
-Mỗi index chứa các khóa xây dựng từ một hoặc nhiều cột của bằng hoặc view.
-Các khóa đó đc lưu trữ trong một cấu trúc dạng B-Tree(cây nhị phân cân bằng) 
cho phép SQL Server tìm một dòng hoặc các dòng liên kết với các giá trị khóa đó nhanh chóng và hiệu quả.
-Clustered index là chỉ mục phân cụm. Loại chỉ mục này sắp xếp và lưu trữ các hàng dữ liệu trong bảng hoặc view dựa trên các giá trị khóa.
-Các giá trị khóa là thành phần được bao gồm trong định nghĩa của chỉ mục phân cụm.
-Trong mỗi bảng thường chỉ có tối đa 1 chỉ mục phân cụm vì các hàng dữ liệu trong bảng chỉ có thể được lưu trữ theo một thứ tự nhất định.
-Chỉ có một thời điểm duy nhất các hàng dữ liệu trong bảng được lưu trữ theo thứ tự, đó là khi bảng chứa chỉ mục phân cụm.
-Một bảng chứa chỉ mục phân cụm được gọi là bảng phân cụm. Nếu một bảng không có chỉ mục
phân cụm thì dữ liệu của các hàng trong bảng sẽ được lưu trữ trong một cấu trúc không có thứ tự gọi là đống(heap).
-Hình sau minh họa cấu trúc của chỉ mục phân cụm:

CREATE CLUSTERED INDEX index_name 
ON schema_name.table_name (column_list);
*/
