
CREATE PROCEDURE GetRequestMasterName
	
	@NameMaster nvarchar(150) = null
AS
BEGIN
	SELECT *
	FROM dbo.Request INNER JOIN
	dbo.[User] ON dbo.Request.RequestMasterID = dbo.[User].UserID
	WHERE dbo.[User].UserFullName = @NameMaster AND dbo.Request.RequestStatusID = 3
END
GO

DROP PROC GetRequestMasterName

EXEC GetRequestMasterName N'Архип Варлам Мэрлович'

