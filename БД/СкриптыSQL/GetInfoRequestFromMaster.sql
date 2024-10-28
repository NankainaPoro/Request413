CREATE PROCEDURE GetInfoRequestFromMaster
	-- Add the parameters for the stored procedure here
	@IDMaster int = 105
AS
BEGIN
    -- Insert statements for procedure here
	SELECT *
	FROM Request
	WHERE RequestMasterID = @IDMaster AND RequestStatusID = 3
END
GO
