CREATE TRIGGER Delete_Seller ON Seller
INSTEAD OF DELETE
AS
BEGIN
SET NOCOUNT ON;
DECLARE @Old INT
SELECT @Old = SellerId FROM deleted
UPDATE Ticket SET Ticket.SellerNumber = 3 WHERE Ticket.SellerNumber = @Old
END


DELETE FROM Seller WHERE SellerId = 4;
SELECT * FROM Ticket


ALTER TABLE Client
ADD LastTicketDate DATETIME NULL

SELECT * FROM Client


CREATE TRIGGER 
UpdateLastBoughtDate ON Ticket AFTER INSERT
AS
BEGIN
DECLARE @sellDate datetime
DECLARE @clientNumber int
SELECT @sellDate = SellDate FROM inserted
SELECT @clientNumber = ClientNumber FROM inserted
UPDATE Client SET LastTicketDate = @sellDate WHERE ClientId = @clientNumber
END

INSERT INTO dbo.Ticket
VALUES(13,3,19,5,3,3,3,GETDATE(),220);
