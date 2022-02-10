CREATE TRIGGER [dbo].[UpdateDriver]
    ON [dbo].[Driver]
    FOR UPDATE
    AS
    BEGIN
        SET NoCount ON
		DECLARE @currDate DATETIME
		SET @currDate = CURRENT_TIMESTAMP

		INSERT INTO StoricoAggiornamenti (number,full_name,country,date_birth,team_id,podiums_number,
		numberNew,full_nameNew,countryNew,date_birthNew,team_idNew,podiums_numberNew,data)
		SELECT d.*,i.*,@currDate
		FROM deleted d, inserted i
		WHERE d.number = i.number
    END