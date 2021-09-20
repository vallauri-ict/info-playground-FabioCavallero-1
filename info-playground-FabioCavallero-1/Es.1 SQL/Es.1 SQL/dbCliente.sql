CREATE TABLE [dbo].[Cliente]
(
	[IdCliente] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Nome] VARCHAR(30) NOT NULL, 
    [Cognome] VARCHAR(50) NOT NULL, 
    [Citta] VARCHAR(50) NOT NULL, 
    [Stato] VARCHAR(3) NOT NULL
)