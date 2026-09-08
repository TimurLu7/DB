SELECT Фамилия, Имя
FROM Спортсмены
WHERE idСпортсмена IN (
    SELECT idСпортсмена
    FROM Рекорды
    WHERE Величина = (SELECT MAX(Величина) FROM Рекорды)
);