CREATE PROCEDURE GetRequestMasterShortName	
	@MasterName nvarchar(150) = null
AS
BEGIN
	SELECT *
	FROM dbo.Request INNER JOIN
	dbo.[User] ON dbo.Request.RequestMasterID = dbo.[User].UserID
	WHERE dbo.[User].UserFullName LIKE ('%' + @MasterName + '%')

END
GO

DROP PROC GetRequestMasterShortName

EXEC GetRequestMasterShortName N'Архи'