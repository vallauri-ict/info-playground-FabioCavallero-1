CREATE TABLE [dbo].[Acquisto]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [IdCliente] INT NOT NULL, 
    [dataOrdinazione] DATE NOT NULL, 
    [Item] INT NOT NULL, 
    [Quantita] INT NOT NULL, 
    [Prezzo] DECIMAL(12, 2) NOT NULL
)