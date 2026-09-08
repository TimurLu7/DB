CREATE TABLE Новые_активы (
    Инвентарный_номер INT PRIMARY KEY,
    Название VARCHAR(200) NOT NULL,
    Код_вида INT NOT NULL,
    Код_лица INT NOT NULL,
    Годовая_норма_амортизации DECIMAL(5,2) NOT NULL,
    Балансовая_стоимость DECIMAL(15,2) NOT NULL,
    Дата_ввода DATE NOT NULL
);