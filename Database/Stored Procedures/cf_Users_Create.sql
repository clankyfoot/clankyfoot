USE [clankyfoot]
GO

IF(OBJECT_ID('cf_Users_Create') IS NOT NULL)
BEGIN
	DROP PROCEDURE cf_Users_Create
END
GO
/*
	RETURNS...
		0. if name, email, salt, or password were null
		/// <summary>
        /// Creates a user
        /// <param name="name">username</param>
        /// <param name="email">email of the user</param>
        /// <param name="phone">phone number</param>
        /// <param name="password">passsword</param>
        /// <param name="salt">salt to be used on the user account</param>
        /// </summary>
*/
CREATE PROCEDURE cf_Users_Create
	@name VARCHAR(300), -- REQUIRED
	@email VARCHAR(300), -- REQUIRED
	@phone VARCHAR(50), -- NOT REQUIRED
	@password VARCHAR(MAX), -- REQUIRED
	@salt VARCHAR(50) -- REQUIRED
AS
BEGIN
	DECLARE @RETURN INT
	SET @RETURN = 0

	IF(@name IS NOT NULL AND @email IS NOT NULL AND @password IS NOT NULL)
	BEGIN TRY
		IF(@phone IS NULL)
		BEGIN
			SET @phone = ''
		END
		INSERT INTO Users (name, email, phone, [password], salt, last_login, last_login_attempt, last_password_change, active)
		VALUES (@name, @email, @phone, @password, @salt, GETDATE(), GETDATE(), GETDATE(), 'Y')
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