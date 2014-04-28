USE [clankyfoot]
GO

IF(OBJECT_ID('cf_Project_Members_Create') IS NOT NULL)
BEGIN
	DROP PROCEDURE cf_Project_Members_Create
END
GO
/*
	RETURNS...
		1. IF SUCCESSFULL
		547. either the project does not exist, 
			or the team member does not exists
		/// <summary>
        /// Adds a Team Member to a project
        /// <param name="project_name">name of the project to add a team member to</param>
        /// <param name="team_member_id">id of the team member to be added</param>
        /// </summary>
*/
CREATE PROCEDURE cf_Project_Members_Create
	@project_name VARCHAR(300), -- REQUIRED
	@team_member_id INT -- REQUIRED
AS
BEGIN
	DECLARE @RETURN INT
	SET @RETURN = 0
	SET NOCOUNT ON

	BEGIN TRY
		INSERT INTO Project_Members (project_name, team_member_id)
		VALUES (@project_name, @team_member_id)

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