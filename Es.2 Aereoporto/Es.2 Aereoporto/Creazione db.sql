CREATE TABLE [dbo].[Aeroporto]
(
	[Città] VARCHAR(20) NOT NULL PRIMARY KEY, 
    [Nazione] VARCHAR(3) NULL, 
    [NumPiste] INT NULL
)
CREATE TABLE [dbo].[Volo]
(
	[IdVolo] INT NOT NULL PRIMARY KEY IDENTITY, 
    [GiornoSett] VARCHAR(10) NULL, 
    [CittaPart] VARCHAR(20) NULL, 
    [OraPart] TIME NULL, 
    [CittaArr] VARCHAR(20) NULL, 
    [OraArr] TIME NULL, 
    [TipoAereo] VARCHAR(20) NULL
)
CREATE TABLE [dbo].[Aereo]
(
	[TipoAereo] VARCHAR(20) NOT NULL PRIMARY KEY, 
    [NumPasseggeri] INT NULL, 
    [QtaMerci] INT NULL
)