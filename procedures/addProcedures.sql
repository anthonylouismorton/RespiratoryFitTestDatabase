CREATE PROCEDURE AddRespirator
@respiratorManufacturer nvarchar(255),
@respiratorModelNumber nvarchar(255),
@respiratorStyleID int

AS
INSERT INTO [dbo].[Respirator]([respiratorManufacturer], [respiratorModelNumber], [respiratorStyleID])
values(@respiratorManufacturer, @respiratorModelNumber, @respiratorStyleID)
SELECT * FROM [dbo].[Respirator] WHERE respiratorID = SCOPE_IDENTITY();

CREATE PROCEDURE AddQuantitativeFitTest
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
INSERT INTO [dbo].[QuantitativeRespiratorFitTest]([maskType], [quantitativeOverallTestPass], [quantitativeTestDate], [quantitativeTestTime], [quantitativeTestExpiration], [quantitativeTest1FitFactor], [quantitativeTest2FitFactor],  [quantitativeTest3FitFactor],  [quantitativeTest4FitFactor], [quantitativeTest5FitFactor], [quantitativeTest6FitFactor], [quantitativeTest7FitFactor],  [quantitativeTest8FitFactor],  [quantitativeOverallFitFactor], [employeeID], [respiratorID])
values(@maskType, @quantitativeOverallTestPass, @quantitativeTestDate, @quantitativeTestTime, @quantitativeTestExpiration, @quantitativeTest1FitFactor, @quantitativeTest2FitFactor, @quantitativeTest3FitFactor, @quantitativeTest4FitFactor, @quantitativeTest5FitFactor, @quantitativeTest6FitFactor, @quantitativeTest7FitFactor, @quantitativeTest8FitFactor, @quantitativeOverallFitFactor, @employeeID, @respiratorID)
SELECT * FROM [dbo].[QuantitativeRespiratorFitTest] WHERE quantitativeTestID = SCOPE_IDENTITY();

CREATE PROCEDURE AddQualitativeFitTest
@qualitativeTestType nvarchar(255),
@qualitativeTasteThreshold nvarchar(255),
@qualitativeTestPass BIT,
@qualitativeTestDate DATE,
@qualitativeTestTime nvarchar(10),
@qualitativeTestExpiration DATE,
@employeeID int,
@respiratorID int
AS
INSERT INTO [dbo].[QualitativeRespiratorFitTest]([qualitativeTestType], [qualitativeTasteThreshold], [qualitativeTestPass], [qualitativeTestDate], [qualitativeTestTime], [qualitativeTestExpiration], [employeeID], [respiratorID])
values(@qualitativeTestType, @qualitativeTasteThreshold, @qualitativeTestPass, @qualitativeTestDate, @qualitativeTestTime, @qualitativeTestExpiration, @employeeID, @respiratorID)
SELECT * FROM [dbo].[QualitativeRespiratorFitTest] WHERE qualitativeTestID = SCOPE_IDENTITY();

CREATE PROCEDURE AddEmployee
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
INSERT INTO [dbo].[Employee]([address1], [address2], [address3], [firstName], [middleName], [lastName], [city], [state], [zip], [employeeEmail], [dob], [employeePhoneNumber], [ssn], [companyID])
values(@address1, @address2, @address3, @firstName, @lastName, @middleName, @city, @state, @zip, @employeeEmail, @dob, @employeePhoneNumber, @ssn, @companyID)
SELECT * FROM [dbo].[Employee] WHERE employeeID = SCOPE_IDENTITY();

CREATE PROCEDURE AddCompany
@address1 nvarchar(255),
@address2 nvarchar(255),
@address3 nvarchar(255),
@city nvarchar(255),
@state varchar(2),
@zip varchar(10),
@email nvarchar(255),
@altEmail nvarchar(255),
@phoneNumber varchar(20),
@ext varchar(10),
@companyName nvarchar(255)
AS
INSERT INTO [dbo].[Company]([address1], [address2], [address3], [city], [state], [zip], [email], [altEmail], [phoneNumber], [ext], [CompanyName])
values(@address1, @address2, @address3, @city, @state, @zip, @email, @altEmail, @phoneNumber, @ext, @companyName)
SELECT * FROM [dbo].[Company] WHERE companyID = SCOPE_IDENTITY();