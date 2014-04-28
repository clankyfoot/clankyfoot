USE [shotski]
GO

IF(OBJECT_ID('cf_Users_Update_email_ByName') IS NOT NULL)
BEGIN
	DROP PROCEDURE cf_Users_Update_email_ByName
END
GO
/*
	RETURNS...
		0. if name, email, salt, or password were null
		/// <summary>
        /// Updates user email
        /// <param name="name">username</param>
        /// <param name="email">new email for the user</param>
        /// </summary>
*/
CREATE PROCEDURE cf_Users_Update_email_ByName
	@name VARCHAR(300), -- REQUIRED
	@email VARCHAR(300) -- REQUIRED
AS
BEGIN
	DECLARE @RETURN INT
	SET @RETURN = 0

	IF(@name IS NOT NULL AND @email IS NOT NULL)
	BEGIN TRY
		UPDATE Users
		SET email = @email
		WHERE name = @name

		SET @RETURN = 1
	END TRY
	BEGIN CATCH
		SET @RETURN = ERROR_NUMBER()
		PRINT ERROR_MESSAGE()
	END CATCH

	SELECT [xml] FROM dbo.cf_value_to_xml (@RETURN)
	RETURN
END
GO