CREATE PROCEDURE Deleterespirator @respiratorID int
AS
DELETE FROM [dbo].[Respirator]
OUTPUT DELETED.*
WHERE respiratorID = @respiratorID

CREATE PROCEDURE DeleteQualitativeFitTest @qualitativeTestID int
AS
DELETE FROM [dbo].[QualitativeRespiratorFitTest]
OUTPUT @qualitativeTestID
WHERE qualitativeTestID = @qualitativeTestID

CREATE PROCEDURE DeleteEmployee @employeeID int
AS
DELETE FROM [dbo].[Employee] 
OUTPUT DELETED.*
WHERE employeeID = @employeeID

CREATE PROCEDURE DeleteCompany @companyID int
AS
DELETE FROM [dbo].[Company] 
OUTPUT DELETED.*
WHERE companyID = @companyID