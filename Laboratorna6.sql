/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [Code_Movie]
      ,[Title]
      ,[ReleaseYear]
      ,[Genre]
  FROM [SUBD1].[dbo].[Movie]


/****** Запит на виконання проекції з таблиці  ******/
CREATE VIEW movie3
AS SELECT DISTINCT MovieId, Title, ReleaseYear FROM Movie


/****** Запит на виконання селекції фільмів з 2005 року і новіших:  ******/
SELECT * FROM movie3
WHERE ReleaseYear>2005


/****** Запит на виконання натурального з'єднання Movie3 і Ticket:  ******/

SELECT movie3.MovieId, movie3.Title, movie3.ReleaseYear,
Ticket.SellDate, Ticket.Price FROM movie3, Ticket
WHERE movie3.MovieId = Ticket.MovieNumber


/****** Запит на виконання умовного з'єднання Movie3 і Ticket:  ******/

SELECT movie3.MovieId, movie3.Title, movie3.ReleaseYear,
Ticket.SellDate, Ticket.Price FROM movie3, Ticket
WHERE movie3.MovieId = Ticket.MovieNumber AND Ticket.SellDate > GetDate()
