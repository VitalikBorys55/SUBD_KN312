/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [Laba3]
  FROM [SUBD1].[dbo].[Laboratorna3]



/********* 	��������� ������ �� ��������� ������ ��������� ��������� ��� �������.: *********/
ALTER TABLE Ticket
DROP CONSTRAINT FK_ClientTicket;

/*********  ��������� ���� � ���� ��������� ���� � �������: *********/
ALTER TABLE Ticket
	DROP COLUMN ClientNumber;
ALTER TABLE Ticket
	ALTER COLUMN Price decimal(9,0) NOT NULL;


/*********  ������� ���� Type � ������� Session �������������, � ������ ���� ���������:  *********/
ALTER TABLE Session
	ALTER COLUMN Type varchar(20) NULL;


/********* 	������ �� ������� Movie ���� Language, ��� ��������� �������� ���� ����� �� ���� �����:  *********/
ALTER TABLE Movie
ALTER COLUMN MovieId decimal(9,0) NOT NULL;

ALTER TABLE Movie
ADD Language nvarchar(20);

ALTER TABLE Movie
ADD CONSTRAINT UQ_Movie UNIQUE (MovieId, Language);


/*********	������ ��������� �������� Ticket_Seller ���, ��� ������ ��� ������ �� ���������� ��� �������� ������ � ������� Seller:  *********/
ALTER TABLE Ticket
DROP CONSTRAINT FK_SellerTicket;

ALTER TABLE Ticket
ADD CONSTRAINT FK_SellerTicket FOREIGN KEY (SellerNumber) REFERENCES Seller(SellerID) ON DELETE NO ACTION;








