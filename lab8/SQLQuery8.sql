SELECT 
    ot.Фамилия,
    ot.Имя,
    ot.Отчество,
    ca.Инвентарный_номер,
    ca.Название,
    ca.Балансовая_стоимость
FROM [Ответственные лица] ot
CROSS APPLY (
    SELECT TOP 1 *
    FROM [Учетная карта активов] k
    WHERE k.Код_лица = ot.Код_лица
    ORDER BY k.Балансовая_стоимость DESC
) AS ca;