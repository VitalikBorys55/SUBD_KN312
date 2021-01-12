CREATE FUNCTION MovieToString (@id AS int)
RETURNS nvarchar(500) AS 
BEGIN
DECLARE @returnValue nvarchar(500)
SELECT @returnValue = Movie.Title + ' ' + CAST(Movie.ReleaseYear as nvarchar(6)) + ' ' + Movie.Genre + ' ' + CAST(Movie.Duration as nvarchar(10))
FROM Movie WHERE MovieId = @id
RETURN @returnValue
END 


CREATE PROCEDURE InsertMovie @title AS nvarchar(50), @releaseYear AS int, @genre AS nvarchar(50), @duration AS int
AS
INSERT INTO Movie (Title, ReleaseYear, Genre, Duration) VALUES (@title, @releaseYear, @genre, @duration);


SELECT dbo.MovieToString(1) AS 'MovieToString'

EXEC InsertMovie @title='inserted',  @releaseYear=2007, @genre ='genre', @duration = 10000;

