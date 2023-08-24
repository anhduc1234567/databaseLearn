/*Lệnh ALTER SCHEMA cho phép bạn chuyển
một đối tượng bảo mật từ lược đồ này sang lược đồ khác trong cùng một CSDL.
ALTER SCHEMA target_schema TRANSFER [entity_type::]object_name;*/
ALTER SCHEMA dbo TRANSFER OBJECT::event.newEvent