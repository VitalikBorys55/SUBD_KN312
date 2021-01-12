SELECT ClientId, Name FROM Client WHERE Name LIKE 'Q%'
ORDER BY Name


SELECT TOP 5 Ticket.TicketId, Ticket.SellDate, Ticket.Price
FROM Ticket ORDER BY Ticket.SellDate DESC


SELECT  Ticket.TicketId, Movie.Title
FROM Ticket  JOIN Movie ON Ticket.MovieNumber = Movie.MovieId


SELECT  COUNT(Ticket.TicketId) AS TicketsAmount, Movie.Title
FROM Ticket  JOIN Movie ON Ticket.MovieNumber = Movie.MovieId
GROUP BY Movie.Title

