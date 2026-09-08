SELECT 
    Фамилия, 
    Имя, 
    'Игрок' AS Тип
FROM Игроки

UNION

SELECT 
    Фамилия, 
    Имя, 
    Должность AS Тип
FROM Персонал

ORDER BY Тип, Фамилия;