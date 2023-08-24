MERGE target_table USING source_table
ON merge_condition
WHEN MATCHED
    THEN update_statement
WHEN NOT MATCHED
    THEN insert_statement
WHEN NOT MATCHED BY SOURCE
    THEN DELETE;


	MERGE sales.SaleProducts s
    USING sales.Products p
ON(s.PK_Products = p.PK_Products)
WHEN MATCHED
    THEN UPDATE SET
        s.Name = p.Name,
        s.Price = p.Price,
        s.SalePrice = p.SalePrice,
        s.Quantity = p.Quantity
WHEN NOT MATCHED BY TARGET
    THEN INSERT(PK_Products, Name, Price, SalePrice, Quantity)
        VALUES(p.PK_Products, p.Name, p.Price, p.SalePrice, p.Quantity)
WHEN NOT MATCHED BY SOURCE
    THEN DELETE;