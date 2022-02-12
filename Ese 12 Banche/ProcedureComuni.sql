CREATE PROCEDURE [dbo].[comuneFiliali]
	@nomeBanca VARCHAR(50),
	@comune VARCHAR(50)
AS
	DECLARE @numero int

	SELECT f.Numero, b.Nome, f.Citta
	FROM Filiali f, Banche b
	WHERE b.Nome = @nomeBanca
	AND f.Citta = @comune

	INSERT INTO ContaFiliali (numero) VALUES (@numero)
RETURN 0