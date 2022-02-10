CREATE TRIGGER [dbo].[DeleteDriver]
    ON [dbo].[Driver]
    AFTER DELETE
    AS
    BEGIN
        --SET NoCount ON
		DECLARE @number as INT
		DECLARE @full_name as VARCHAR(100)
		DECLARE @country as CHAR(2)
		DECLARE @date_birth as DATE
		DECLARE @team_id as INT
		DECLARE @podiums_number as INT

		SET  @number = (SELECT number from deleted)
		SET  @full_name = (SELECT full_name from deleted)
		SET  @country = (SELECT country from deleted)
		SET  @date_birth = (SELECT date_birth from deleted)
		SET  @team_id = (SELECT team_id from deleted)
		SET  @podiums_number  = (SELECT podiums_number from deleted)

		INSERT INTO StoricoCancellazioni VALUES(@number,@full_name,@country,@date_birth,@team_id,@podiums_number,GETDATE());
    END