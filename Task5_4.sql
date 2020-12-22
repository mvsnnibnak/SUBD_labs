USE Pharmacy
GO
SELECT*FROM Клієнти_1
WHERE Код_клієнта In(SELECT Код_клієнта FROM Клієнти_2)