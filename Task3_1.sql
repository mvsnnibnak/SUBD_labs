USE [Pharmacy]
GO
alter table dbo.Аптека
add Площа INT 
GO

USE [Pharmacy]
GO
alter table dbo.Аптека
alter column "Вулиця" CHAR(50) NULL
GO



