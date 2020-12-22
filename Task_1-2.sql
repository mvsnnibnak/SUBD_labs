CREATE TABLE Медикамент(
	Код_медикамента  INTEGER NOT NULL,
	Ціна MONEY NOT NULL,
	Склад CHAR(225) NOT NULL,
	Тип CHAR(20) NOT NULL,
	Термін_дії DATE NOT NULL,
	Умови_зберігання CHAR(225) NOT NULL,
	Дозування VARCHAR NOT NULL,
	PRIMARY KEY (Код_медикамента )
);
CREATE TABLE Продавець(
	Код_продавця  INTEGER NOT NULL,
	Імя CHAR(15) NOT NULL,
	Прізвище CHAR(30) NOT NULL,
	Номер_телефону INTEGER,
	Посада CHAR(15) NOT NULL,
	Місто_проживання CHAR(20) NOT NULL,
	Вулиця CHAR(30) NOT NULL,
	Номер_будинку CHAR(6),
	Електронна_адреса VARCHAR(30) NOT NULL,
	Дата_народження DATE NOT NULL,
	PRIMARY KEY (Код_продавця )
);
CREATE TABLE Клієнт(
	Код_клієнта   INTEGER NOT NULL,
	Імя CHAR(15) NOT NULL,
	Прізвище CHAR(30) NOT NULL,
	Місто_проживання CHAR(20) NOT NULL,
	Вулиця CHAR(30) NOT NULL,
	Номер_будинку CHAR(6),
	Поштовий_індекс INTEGER NOT NULL,
	Номер_телефону INTEGER,
	Електронна_адреса VARCHAR(30) NOT NULL,
	Дата_народження DATE NOT NULL,
	PRIMARY KEY (Код_клієнта  )
); 
CREATE TABLE Аптека(
	Код_аптеки INTEGER NOT NULL,
	Назва CHAR(20) NOT NULL,
	Місто CHAR(20) NOT NULL,
	Вулиця CHAR(30) NOT NULL,
	Номер_будинку CHAR(6),
	Електронна_адреса VARCHAR(30) NOT NULL,
	Дата_створення DATE NOT NULL,
	Номер_телефону INTEGER,
	Час_роботи TIME NOT NULL,
	PRIMARY KEY (Код_аптеки),
);

CREATE TABLE Фірма_виробник(
	Код_фірми INTEGER NOT NULL,
	Назва CHAR(30) NOT NULL,
	Місто CHAR(20) NOT NULL,
	Вулиця CHAR(30) NOT NULL,
	Номер_будинку CHAR(6),
	Номер_телефону INTEGER,
	Електронна_адреса VARCHAR(30) NOT NULL,
	PRIMARY KEY (Код_фірми),
);
CREATE TABLE Договір(
	Код_договору  INTEGER NOT NULL,
       Код_аптеки INTEGER NOT NULL,
	Код_фірми INTEGER NOT NULL,
	Дата_заключення DATE NOT NULL,
	Дата_закінчення DATE NOT NULL,
	PRIMARY KEY (Код_договору ),
	CONSTRAINT ФКаптека
	FOREIGN KEY (Код_аптеки  )
	REFERENCES Аптека
	ON DELETE CASCADE
	ON UPDATE CASCADE,
	CONSTRAINT ФКфірма_виробник
	FOREIGN KEY (Код_фірми  )
	REFERENCES Фірма_виробник
	ON DELETE CASCADE
	ON UPDATE CASCADE,
);
CREATE TABLE Чек(
	Код_чеку  INTEGER NOT NULL,
          Код_аптеки INTEGER NOT NULL,
	Код_продавця INTEGER NOT NULL,
	Код_клієнта INTEGER NOT NULL,
	Код_медикамента INTEGER NOT NULL,
	Дата_продажу DATE NOT NULL,
	Час_продажу TIME NOT NULL,
	PRIMARY KEY (Код_чеку ),
	CONSTRAINT ФК_аптека
	FOREIGN KEY (Код_аптеки  )
	REFERENCES Аптека
	ON DELETE CASCADE
	ON UPDATE CASCADE,
	CONSTRAINT ФКпродавець
	FOREIGN KEY (Код_продавця  )
	REFERENCES Продавець
	ON DELETE CASCADE
	ON UPDATE CASCADE,
	CONSTRAINT ФКклієнт
	FOREIGN KEY (Код_клієнта  )
	REFERENCES Клієнт
	ON DELETE CASCADE
	ON UPDATE CASCADE,
	CONSTRAINT ФК_медикамент
	FOREIGN KEY (Код_медикамента  )
	REFERENCES Медикамент
	ON DELETE CASCADE
	ON UPDATE CASCADE,
);
