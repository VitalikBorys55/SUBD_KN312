EXEC sp_helpindex 'Movie'


EXEC sp_helpindex 'Ticket' 


CREATE INDEX ticketINDX3 ON Ticket (TicketId); 
EXEC sp_helpindex 'Ticket'


CREATE UNIQUE INDEX movieINDX ON Movie (MovieId, ReleaseYear); 
EXEC sp_helpindex 'Movie'


SET SHOWPLAN_ALL ON;
GO
SELECT TOP 3 Ticket.TicketId, Client.Name, Movie.Title, Ticket.SellDate
FROM Client JOIN Ticket ON Client.ClientId = Ticket.ClientNumber
JOIN Movie ON Ticket.MovieNumber = Movie.MovieId
ORDER BY Ticket.SellDate DESC
GO
SET SHOWPLAN_ALL OFF; 
