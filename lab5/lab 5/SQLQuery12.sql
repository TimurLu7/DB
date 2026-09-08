UPDATE Товары
SET Цена = 
    CAST(
        CAST(LEFT(Цена, CHARINDEX(' ', Цена) - 1) AS DECIMAL(10,1)) * 1.1 
        AS VARCHAR(20)
    ) + ' BYN'