/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [Laboratorna4]
  FROM [SUBDLABA4].[dbo].[Laboratorna4]




/********* ���������� ����� ������� : *********/
INSERT INTO Movie (Title, ReleaseYear, Genre, Duration) VALUES ('Lighthouse', 2019, 'Drama, Fantasy, Horror', 6540);
INSERT INTO Movie (Title, ReleaseYear, Genre, Duration) VALUES 
('Inception', 2010, 'Science fiction, Action, Thriller, Drama', 8880),
('Gladiator', 2000, 'History, Drama', 9300),
('Law Abiding Citizen', 2009, 'Drama, Thriller', 6576);


/********* ���������� ����� ������� ����� �����: *********/
BULK
INSERT Cinema
FROM 'C:\NULP\cinema.csv'
WITH
(
FIELDTERMINATOR = ',',
ROWTERMINATOR = '\n'
);

BULK
INSERT Auditorium
FROM 'C:\NULP\auditorium.csv'
WITH
(
FIELDTERMINATOR = ',',
ROWTERMINATOR = '\n'
);




/********* ����� ����� � �������: *********/
UPDATE Cinema SET HouseNumber='12' WHERE CinemaName='Cinema1';
UPDATE Cinema SET PhoneNumber=PhoneNumber+1;


/********* ��������� ����� � �������: *********/
DELETE FROM Session WHERE EndDate< GetDate();