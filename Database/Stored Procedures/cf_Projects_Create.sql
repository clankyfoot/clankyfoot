USE [clankyfoot]
GO

IF(OBJECT_ID('cf_Projects_Create') IS NOT NULL)
BEGIN
	DROP PROCEDURE cf_Projects_Create
END
GO
/*
	RETURNS....
		0. if no changes occured
		1. SUCCESSFULL
		547. The INSERT statement conflicted with the FOREIGN KEY constraint "Fk_Projects_team_lead_id".
		2627. Violation of PRIMARY KEY constraint 'Pk_Projects_name'. 
				Cannot insert duplicate key in object 'dbo.Projects'.
		/// <summary>
        /// Creates a project
        /// <param name="project_name">name of the new project</param>
        /// <param name="team_lead_id">lead of team lead</param>
        /// </summary>
*/
CREATE PROCEDURE cf_Projects_Create
	@project_name VARCHAR(300), -- REQUIRED
	@team_lead_id INT -- REQUIRED
AS
BEGIN
	DECLARE @RETURN INT
	SET @RETURN = 0
	SET NOCOUNT ON -- don't count the rows effected
	BEGIN TRY
		INSERT INTO Projects (name, date_created, team_lead_id)
		VALUES (@project_name, CONVERT(date, GETDATE()), @team_lead_id)

		EXEC @RETURN = cf_Project_Members_Create
				@project_name  = @project_name, 
				@team_member_id = @team_lead_id
	END TRY
	BEGIN CATCH
		SET @RETURN = ERROR_NUMBER()
		PRINT ERROR_MESSAGE()
	END CATCH

	SELECT [xml] FROM dbo.cf_value_to_xml (@RETURN)
	RETURN
END
GO