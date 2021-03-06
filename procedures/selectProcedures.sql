CREATE PROCEDURE SelectRespirators
AS
SELECT Respirator.respiratorID, Respirator.respiratorManufacturer, Respirator.respiratorModelNumber, RespiratorStyle.respiratorStyleID, RespiratorStyle.respiratorStyleName, RespiratorStyle.respiratorStyleFitFactor
FROM Respirator
INNER JOIN RespiratorStyle ON RespiratorStyle.respiratorStyleID = Respirator.respiratorStyleID

CREATE PROCEDURE SelectRespirator @respiratorID int
AS
BEGIN
SELECT Respirator.respiratorID, Respirator.respiratorManufacturer, Respirator.respiratorModelNumber, Respirator.respiratorStyleID, RespiratorStyle.respiratorStyleName, RespiratorStyle.respiratorStyleFitFactor
FROM Respirator
INNER JOIN RespiratorStyle
ON Respirator.respiratorStyleID = RespiratorStyle.respiratorStyleID
Where respiratorID = @respiratorID
END

CREATE PROCEDURE SelectQuantitativeFitTests
AS
SELECT * FROM [dbo].[QuantitativeRespiratorFitTest]

CREATE PROCEDURE SelectQualitativeFitTests
AS
SELECT * FROM [dbo].[QualitativeRespiratorFitTest]

CREATE PROCEDURE SelectEmployeeQuantitativeFitTests @employeeID int
AS
SELECT QuantitativeRespiratorFitTest.*, Respirator.respiratorManufacturer, Respirator.respiratorModelNumber
FROM [dbo].[QuantitativeRespiratorFitTest]
LEFT JOIN Respirator
ON respirator.respiratorID=QuantitativeRespiratorFitTest.respiratorID

CREATE PROCEDURE SelectEmployeeQualitativeFitTests @employeeID int
AS
SELECT QualitativeRespiratorFitTest.*, Respirator.respiratorManufacturer, Respirator.respiratorModelNumber
FROM [dbo].[QualitativeRespiratorFitTest]
LEFT JOIN Respirator
ON respirator.respiratorID=QualitativeRespiratorFitTest.respiratorID

CREATE PROCEDURE SelectEmployee @employeeID int
AS
SELECT * FROM [dbo].[Employee]
WHERE employeeID = @employeeID

CREATE PROCEDURE SelectCompanyEmployees @companyID int
AS
SELECT * FROM [dbo].[Employee]
WHERE companyID = @companyID

CREATE PROCEDURE SelectCompany @companyID int
AS
SELECT * FROM [dbo].[Company]
WHERE companyID = @companyID

CREATE PROCEDURE SelectAllEmployees
AS
SELECT Employee.*, Company.companyName from [dbo].[Employee]
left Join Company ON Company.companyID=Employee.companyID

CREATE PROCEDURE SelectAllCompanies
AS
SELECT * FROM [dbo].[Company]

create procedure SelectRespiratorList
AS
SELECT DISTINCT respiratorManufacturer from dbo.Respirator
GO

CREATE PROCEDURE SelectEmployeeBySSN @ssn Int
AS
SELECT * FROM [dbo].[Employee]
WHERE ssn = @ssn

create procedure SelectRespiratorModels @respiratorManufacturer nvarchar(255)
AS
SELECT * From [dbo].[Respirator]
Where respiratorManufacturer = @respiratorManufacturer
GO;