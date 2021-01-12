BEGIN TRANSACTION;
INSERT INTO dbo.Ticket VALUES(1,1,15,1,1,1,3,GETDATE(),150);
INSERT INTO dbo.Ticket VALUES(10,2,21,3,2,3,3,GETDATE(),160);
INSERT INTO dbo.Ticket VALUES(11,3,18,4,3,4,4,GETDATE(),170);
INSERT INTO dbo.Ticket VALUES(13,1,19,5,1,9,4,GETDATE(),180);
COMMIT;


SELECT TOP 4 * FROM Ticket ORDER BY SellDate DESC