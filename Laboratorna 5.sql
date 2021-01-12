/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [Code_Movie]
      ,[Title]
      ,[ReleaseYear]
      ,[Genre]
  FROM [SUBDLABA4].[dbo].[Movie]

/****** Рік випуску до 2000  ******/
SELECT * INTO Movie2
FROM Movie WHERE ReleaseYear<=2000;

/****** Рік випуску після 2000  ******/
SELECT * INTO Movie1
FROM Movie WHERE ReleaseYear>=2000;


/****** Запит на об'єднання:  ******/
SELECT * FROM Movie1
UNION
SELECT * FROM Movie2;

/****** Запит на перетин:  ******/
SELECT * FROM Movie1
WHERE MovieId  IN (SELECT MovieId FROM Movie2);

/****** Запит на різницю:  ******/
SELECT * FROM Movie2
WHERE MovieId  NOT IN (SELECT MovieId FROM Movie1);

/****** Декартовий добуток:  ******/
SELECT * FROM Movie1, Movie2;