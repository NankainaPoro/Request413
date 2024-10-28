USE DBVakulenkoRequests413

SELECT *
FROM Request

SELECT *
FROM Request
WHERE RequestStatusID=3

SELECT AVG(RequestTime)/60.0 AS TimeAvg
FROM Request
WHERE RequestStatusID=3

EXEC GetInfoRequestFromMaster 105

SELECT *
FROM Request, [User]
WHERE [User].UserFullName = N'Ситников Парфений Всеволодович' AND RequestStatusID = 3