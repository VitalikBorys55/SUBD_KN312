CREATE DATABASE CinemaDB
GO
CREATE TABLE CinemaDB.dbo.Movie(
	MovieId decimal(9,0) NOT NULL IDENTITY(1,1) PRIMARY KEY,
	Title nvarchar(40) NOT NULL,
	ReleaseYear int NOT NULL,
	Genre nvarchar(40) NOT NULL,
	Duration int NOT NULL,
);
CREATE TABLE CinemaDB.dbo.Cinema(
	CinemaId decimal(9,0) NOT NULL IDENTITY(1,1) PRIMARY KEY,
	CinemaName nvarchar(30) NOT NULL,
	City nvarchar(30) NOT NULL,
	Street nvarchar(30) NOT NULL,
	HouseNumber nvarchar(6) NOT NULL,
	PhoneNumber int,
	Email nvarchar(50) NOT NULL,
);
CREATE TABLE CinemaDB.dbo.Client(
	ClientId decimal(9,0) NOT NULL IDENTITY(1,1) PRIMARY KEY,
	Name nvarchar(15) NOT NULL,
	Surname nvarchar(20) NOT NULL,
	Patronymic nvarchar(20) NOT NULL,
	PhoneNumber int,
	Email nvarchar(50) NOT NULL,
	Birthdate date
);
CREATE TABLE CinemaDB.dbo.Auditorium(
	AuditoriumId decimal(9,0) NOT NULL IDENTITY(1,1) PRIMARY KEY,
	InternalNumber int NOT NULL,
	CountPlaces int NOT NULL,
	CountRows int NOT NULL,
);
CREATE TABLE CinemaDB.dbo.Place(
	PlaceId decimal(9,0) NOT NULL IDENTITY(1,1) PRIMARY KEY,
	Row int NOT NULL,
	Number int NOT NULL,
	PlaceName nvarchar(3) NOT NULL,
);
CREATE TABLE CinemaDB.dbo.Session(
	SessionId decimal(9,0) NOT NULL IDENTITY(1,1) PRIMARY KEY,
	StartDate datetime NOT NULL,
	EndDate datetime NOT NULL,
	Type nvarchar(20) NOT NULL,
);
CREATE TABLE CinemaDB.dbo.Seller(
	SellerId decimal(9,0) NOT NULL IDENTITY(1,1) PRIMARY KEY,
	Name nvarchar(15) NOT NULL,
	Surname nvarchar(20) NOT NULL,
	Patronymic nvarchar(20) NOT NULL,
	PhoneNumber int,
	Email nvarchar(50) NOT NULL,
	Post nvarchar(30) NOT NULL,
	BirthDate date,
	City nvarchar(30) NOT NULL,
	Street nvarchar(30) NOT NULL,
	HouseNumber nvarchar(6) NOT NULL
);
CREATE TABLE CinemaDB.dbo.Ticket(
	TicketId decimal(9,0) NOT NULL IDENTITY(1,1) PRIMARY KEY,
	MovieNumber decimal(9,0) NOT NULL,
	CinemaNumber decimal(9,0) NOT NULL,
	SessionNumber decimal(9,0) NOT NULL,
	PlaceNumber decimal(9,0) NOT NULL,
	AuditoriumNumber decimal(9,0) NOT NULL,
	ClientNumber decimal(9,0),
	SellerNumber decimal(9,0),
	SellDate datetime,
	Price money NOT NULL
	CONSTRAINT FK_MovieTicket FOREIGN KEY (MovieNumber) REFERENCES Movie(MovieId) ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT FK_CinemaTicket FOREIGN KEY (CinemaNumber) REFERENCES Cinema(CinemaId) ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT FK_SessionTicket FOREIGN KEY (SessionNumber) REFERENCES Session(SessionId) ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT FK_PlaceTicket FOREIGN KEY (PlaceNumber) REFERENCES Place(PlaceId) ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT FK_AuditoriumTicket FOREIGN KEY (AuditoriumNumber) REFERENCES Auditorium(AuditoriumId) ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT FK_ClientTicket FOREIGN KEY (ClientNumber) REFERENCES Client(ClientId) ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT FK_SellerTicket FOREIGN KEY (SellerNumber) REFERENCES Seller(SellerId) ON DELETE CASCADE ON UPDATE CASCADE
);
