/*RAISERROR ({message_id | message_text | @local_variable} {, severity, state} [, argument[, ...]])
    [WITH option[,...]];
cấp độ từ 0-10: thông điệp thông báo
cấp độ 11-18: lỗi
cấp độ 19-25: lỗi rất nghiêm trọng.


RAISERROR	
Giá trị message_id truyền vào RAISERROR cần phải được định nghĩa trong sys.messages view.	
Tham số message có thể chứa định dạng %s và %d của hàm printf trong ngôn ngữ lập trình C.	
Giá trị tham số severity chỉ ra mức độ nghiêm trọng của ngoại lệ.
	*/
	/*
EXEC sp_addmessage 
    @msgnum = 50005, 
    @severity = 1, 
    @msgtext = 'This is customize error message';
EXEC sp_dropmessage
    @msgnum = 5005;*/
BEGIN TRY
RAISERROR(50005, 14, 1,'ghj')
END TRY
BEGIN CATCH
	SELECT ERROR_MESSAGE(),ERROR_LINE(),ERROR_SEVERITY(),ERROR_PROCEDURE()
END CATCH
--('Error in TRY bl3245ock.', 17, 1)