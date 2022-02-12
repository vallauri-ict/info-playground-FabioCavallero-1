CREATE PROCEDURE [dbo].[cercaFiliali]
	@nomeBanca VARCHAR(50),
	@comune VARCHAR(50)
AS
	DECLARE @numero int

	SELECT @numero=COUNT(*)
	FROM Filiali f, Banche b
	WHERE b.Nome = @nomeBanca
	AND f.Citta = @comune

	INSERT INTO ContaFiliali (numero) VALUES (@numero)
RETURN 0
