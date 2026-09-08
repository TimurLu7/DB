DELETE FROM Посещение
WHERE Код_тренировки IN (
    SELECT Код_тренировки FROM Тренировки 
    WHERE YEAR(Дата) = YEAR(GETDATE()) - 1
);