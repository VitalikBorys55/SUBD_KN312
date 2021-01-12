SELECT Title FROM Movie WHERE MovieId = 13

SELECT Client.ClientId, Client.Name, Client.Email,
Ticket.SellDate, Ticket.Price
FROM Client LEFT JOIN Ticket ON
Client.ClientId = Ticket.ClientNumber


SELECT Client.Name, Ticket.MovieNumber
FROM Client INNER JOIN Ticket ON Client.ClientId = Ticket.ClientNumber
WHERE MovieNumber = 1


SELECT Movie.Title, Ticket.TicketId FROM Movie INNER JOIN Ticket
ON Movie.MovieId= Ticket.MovieNumber
WHERE Movie.Title IN ('Lighthouse', 'Inception')


SELECT TOP 3 Ticket.TicketId, Client.Name, Movie.Title, Ticket.SellDate
FROM Client JOIN Ticket ON Client.ClientId = Ticket.ClientNumber
JOIN Movie ON Ticket.MovieNumber = Movie.MovieId
ORDER BY Ticket.SellDate DESC


SELECT Client.Name FROM Client
WHERE NOT EXISTS 
(SELECT * FROM Ticket WHERE Ticket.ClientNumber = Client.ClientId)


SELECT Title, Duration AS [Total seconds] FROM Movie
WHERE Duration>7200;




