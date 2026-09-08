CREATE TABLE "Игровая статистика" (
    ID_статистики INT PRIMARY KEY IDENTITY(1,1),
    Код_игрока INT NOT NULL,
    Сезон VARCHAR(9) NOT NULL,
    Голы INT DEFAULT 0,
    Передачи INT DEFAULT 0,
    Карточки INT DEFAULT 0
);