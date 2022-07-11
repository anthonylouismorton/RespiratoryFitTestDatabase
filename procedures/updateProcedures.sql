CREATE PROCEDURE UpdateRespirator
@respiratorID int,
@respiratorManufacturer nvarchar(255),
@respiratorModelNumber nvarchar(255),
@respiratorStyleID int

AS
BEGIN
SET NOCOUNT ON

UPDATE [dbo].[Respirator]
SET
[respiratorManufacturer] = isNull(@respiratorManufacturer, respiratorManufacturer), 
[respiratorModelNumber] = isNull(@respiratorModelNumber, respiratorModelNumber),
[respiratorStyleID] = isNull(@respiratorStyleID, respiratorStyleID)

WHERE respiratorID = @respiratorID
SELECT Respirator.respiratorID, Respirator.respiratorManufacturer, Respirator.respiratorModelNumber, RespiratorStyle.respiratorStyleID, RespiratorStyle.respiratorStyleName, RespiratorStyle.respiratorStyleFitFactor
FROM Respirator
INNER JOIN RespiratorStyle ON RespiratorStyle.respiratorStyleID = Respirator.respiratorStyleID
Where respiratorID = @respiratorID
END

CREATE PROCEDURE UpdateQuantitativeFitTest
@quantitativeTestID int,
@maskType nvarchar(255),
@quantitativeOverallTestPass BIT,
@quantitativeTestDate DATE,
@quantitativeTestTime nvarchar(10),
@quantitativeTestExpiration DATE,
@quantitativeTest1FitFactor nvarchar(255),
@quantitativeTest2FitFactor nvarchar(255),
@quantitativeTest3FitFactor nvarchar(255),
@quantitativeTest4FitFactor nvarchar(255),
@quantitativeTest5FitFactor nvarchar(255),
@quantitativeTest6FitFactor nvarchar(255),
@quantitativeTest7FitFactor nvarchar(255),
@quantitativeTest8FitFactor nvarchar(255),
@quantitativeOverallFitFactor nvarchar(255),
@employeeID int,
@respiratorID int
AS
BEGIN
SET NOCOUNT ON

UPDATE [dbo].[QuantitativeRespiratorFitTest]
SET
[maskType] = isNull(@maskType, maskType),
[quantitativeOverallTestPass] = isNull(@quantitativeOverallTestPass, quantitativeOverallTestPass),
[quantitativeTestDate] = isNull(@quantitativeTestDate, quantitativeTestDate),
[quantitativeTestTime] = isNull(@quantitativeTestTime, quantitativeTestTime),
[quantitativeTestExpiration] = isNull(@quantitativeTestExpiration, quantitativeTestExpiration),
[quantitativeTest1FitFactor] = isNull(@quantitativeTest1FitFactor, quantitativeTest1FitFactor),
[quantitativeTest2FitFactor] = isNull(@quantitativeTest2FitFactor, quantitativeTest2FitFactor),
[quantitativeTest3FitFactor] = isNull(@quantitativeTest3FitFactor, quantitativeTest3FitFactor),
[quantitativeTest4FitFactor] = isNull(@quantitativeTest4FitFactor, quantitativeTest4FitFactor),
[quantitativeTest5FitFactor] = isNull(@quantitativeTest5FitFactor, quantitativeTest5FitFactor),
[quantitativeTest6FitFactor] = isNull(@quantitativeTest6FitFactor, quantitativeTest6FitFactor),
[quantitativeTest7FitFactor] = isNull(@quantitativeTest7FitFactor, quantitativeTest7FitFactor),
[quantitativeTest8FitFactor] = isNull(@quantitativeTest8FitFactor, quantitativeTest8FitFactor),
[quantitativeOverallFitFactor] = isNull(@quantitativeOverallFitFactor, quantitativeOverallFitFactor),
[employeeID] = isNull(@employeeID, employeeID),
[respiratorID] = isNull(@respiratorID, respiratorID)
WHERE quantitativeTestID = @quantitativeTestID
SELECT * FROM [dbo].[QuantitativeRespiratorFitTest] WHERE quantitativeTestID = @quantitativeTestID;
END

CREATE PROCEDURE UpdateQualitativeFitTest
@qualitativeTestID int,
@qualitativeTestType nvarchar(255),
@qualitativeTasteThreshold nvarchar(255),
@qualitativeTestPass bit,
@qualitativeTestDate date,
@qualitativeTestTime nvarchar(10),
@qualitativeTestExpiration date,
@employeeID int,
@respiratorID int

AS
BEGIN
SET NOCOUNT ON

UPDATE [dbo].[QualitativeRespiratorFitTest]
SET
[qualitativeTestType] = isNull(@qualitativeTestType, qualitativeTestType), 
[qualitativeTasteThreshold] = isNull(@qualitativeTasteThreshold, qualitativeTasteThreshold),
[qualitativeTestPass] = isNull(@qualitativeTestPass, qualitativeTestPass),
[qualitativeTestDate] = isNull(@qualitativeTestDate, qualitativeTestDate),
[qualitativeTestTime] = isNull(@qualitativeTestTime, qualitativeTestTime),
[qualitativeTestExpiration] = isNull(@qualitativeTestExpiration, qualitativeTestExpiration),
[employeeID] = isNull(@employeeID, employeeID), 
[respiratorID] = isNull(@respiratorID, [respiratorID])
WHERE qualitativeTestID = @qualitativeTestID
SELECT * FROM [dbo].[QualitativeRespiratorFitTest] WHERE qualitativeTestID = @qualitativeTestID;
END

CREATE PROCEDURE UpdateEmployee
@employeeID int,
@address1 nvarchar(255),
@address2 nvarchar(255),
@address3 nvarchar(255),
@firstName nvarchar(255),
@middleName nvarchar(255),
@lastName nvarchar(255),
@city nvarchar(255),
@state varchar(2),
@zip varchar(10),
@dob DATE,
@ssn Nvarchar(9),
@employeeEmail nvarchar(255),
@employeePhoneNumber varchar(20),
@companyID int

AS
BEGIN
SET NOCOUNT ON

UPDATE [dbo].[Employee]
SET
[address1] = isNull(@address1, address1), 
[address2] = isNull(@address2, address2),
[address3] = isNull(@address3, address3),
[firstName] = isNull(@firstName, firstName),
[middleName] = isNull(@middleName, middleName),
[lastName] = isNull(@lastName, lastName),
[city] = isNull(@city, city), 
[state] = isNull(@state, [state]), 
[zip] = isNull(@zip, zip), 
[employeeEmail] = isNull(@employeeEmail, employeeEmail), 
[employeePhoneNumber] = isNull(@employeePhoneNumber, employeePhoneNumber), 
[dob] = isNull(@dob, dob),
[ssn] = isNull(@ssn, ssn),
[CompanyID] = isNull(@companyID, companyID)
WHERE employeeID = @employeeID
SELECT * FROM [dbo].[Employee] WHERE employeeID = @employeeID;
END

CREATE PROCEDURE UpdateCompany
@companyID int,
@address1 nvarchar(255) = null,
@address2 nvarchar(255) = null,
@address3 nvarchar(255) = null,
@city nvarchar(255) = null,
@state varchar(2) = null,
@zip varchar(10) = null,
@email nvarchar(255) = null,
@altEmail nvarchar(255) = null,
@phoneNumber varchar(20) = null,
@ext varchar(10) = null,
@companyName nvarchar(255) = null

AS
BEGIN
SET NOCOUNT ON

UPDATE [dbo].[Company]
SET
[address1] = isNull(@address1, address1), 
[address2] = isNull(@address2, address2),
[address3] = isNull(@address3, address3),
[city] = isNull(@city, city), 
[state] = isNull(@state, [state]), 
[zip] = isNull(@zip, zip), 
[email] = isNull(@email, email), 
[altEmail] = isNull(@altEmail, altEmail), 
[phoneNumber] = isNull(@phoneNumber, phoneNumber), 
[ext] = isNull(@ext, ext), 
[CompanyName] = isNull(@companyName, companyName)
WHERE companyID = @companyID
SELECT * FROM [dbo].[Company] WHERE companyID = @companyID;
END