MERGE [Учетная карта активов] AS target
USING Новые_активы AS source
ON target.Инвентарный_номер = source.Инвентарный_номер
WHEN MATCHED THEN
    UPDATE SET 
        target.Балансовая_стоимость = source.Балансовая_стоимость,
        target.Название = source.Название
WHEN NOT MATCHED THEN
    INSERT (Инвентарный_номер, Название, Код_вида, Код_лица, Годовая_норма_амортизации, Балансовая_стоимость, Дата_ввода)
    VALUES (source.Инвентарный_номер, source.Название, source.Код_вида, source.Код_лица, source.Годовая_норма_амортизации, source.Балансовая_стоимость, source.Дата_ввода);