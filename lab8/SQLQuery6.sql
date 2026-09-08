SELECT *
FROM (
    SELECT 
        v.Наименование,
        FORMAT(h.Месяц, 'MMM yyyy') AS Месяц,
        h.Амортизация_за_месяц
    FROM [История амортизации] h
    JOIN [Учетная карта активов] k ON h.Инвентарный_номер = k.Инвентарный_номер
    JOIN [Виды активов] v ON k.Код_вида = v.Код_вида
) AS Source
PIVOT (
    SUM(Амортизация_за_месяц)
    FOR Месяц IN ([Feb 2026], [Mar 2026], [Apr 2026], [May 2026], [Jun 202])
) AS PivotTable;