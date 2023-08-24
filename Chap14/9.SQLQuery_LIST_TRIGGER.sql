--list trigger
SELECT 
    name,
    is_instead_of_trigger
FROM 
    sys.triggers 
WHERE 
    type = 'TR';