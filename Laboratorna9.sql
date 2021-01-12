SELECT COUNT(Movie.MovieId) AS MoviesAmount FROM Movie
WHERE Genre LIKE '%comedy%'


SELECT MONTH(Ticket.SellDate) AS Month, DAY(Ticket.SellDate) AS Day, COUNT(Ticket.TicketId) AS TicketsAmount
FROM Ticket GROUP BY MONTH(Ticket.SellDate), DAY(Ticket.SellDate)


SELECT Client.ClientId, SUM(Ticket.Price) AS TotalSum
FROM Client LEFT JOIN Ticket ON Client.ClientId=Ticket.ClientNumber
GROUP BY Client.ClientId


SELECT TOP 1 Client.ClientId, COUNT(Ticket.TicketId) AS TicketsAmount FROM Client
JOIN Ticket ON Client.ClientId = Ticket.ClientNumber
GROUP BY Client.ClientId
ORDER BY COUNT(Ticket.TicketId) DESC
