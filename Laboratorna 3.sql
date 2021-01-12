/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [Laba3]
  FROM [SUBD1].[dbo].[Laboratorna3]



/********* 	Видалення зв’язку між таблицями шляхом видалення обмеження для таблиці.: *********/
ALTER TABLE Ticket
DROP CONSTRAINT FK_ClientTicket;

/*********  Видалення поля і зміна розмірності поля в таблиці: *********/
ALTER TABLE Ticket
	DROP COLUMN ClientNumber;
ALTER TABLE Ticket
	ALTER COLUMN Price decimal(9,0) NOT NULL;


/*********  Зробимо поле Type в таблиці Session необов’язковим, і змінимо його розмірність:  *********/
ALTER TABLE Session
	ALTER COLUMN Type varchar(20) NULL;


/********* 	Додамо до таблиці Movie поле Language, яке дозволить зберігати один фільм на різих мовах:  *********/
ALTER TABLE Movie
ALTER COLUMN MovieId decimal(9,0) NOT NULL;

ALTER TABLE Movie
ADD Language nvarchar(20);

ALTER TABLE Movie
ADD CONSTRAINT UQ_Movie UNIQUE (MovieId, Language);


/*********	Змінимо обмеження цілісності Ticket_Seller так, щоб записи про квитки не видалялись при видаленні запису з таблиці Seller:  *********/
ALTER TABLE Ticket
DROP CONSTRAINT FK_SellerTicket;

ALTER TABLE Ticket
ADD CONSTRAINT FK_SellerTicket FOREIGN KEY (SellerNumber) REFERENCES Seller(SellerID) ON DELETE NO ACTION;








