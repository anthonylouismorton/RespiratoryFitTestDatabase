create table Company (
	companyID int IDENTITY(100000,1) PRIMARY KEY,
	companyAdress1 nvarchar(255),
	companyAddress2 nvarchar(255),
	companyAddress3 nvarchar(255),
	companyCity nvarchar(255),
	companyState varchar(2),
	companyZipCode varchar(10),
	companyEmail nvarchar(255),
	companyAltEmail nvarchar(255),
	companyPhoneNumber varchar(20),
	companyPhoneNumberExt varchar(10),

)

create table Employee (
	employeeID int IDENTITY (200000,1) PRIMARY KEY,
	employeeFirstName nvarchar(255),
	employeeMiddleName nvarchar(255),
	employeeLastName nvarchar(255),
	employeeBirthDate DATE,
	employeeSSN nvarchar(9),
	employeeAdress1 nvarchar(255),
	employeeAddress2 nvarchar(255),
	employeeAddress3 nvarchar(255),
	employeeCity nvarchar(255),
	employeeState varchar(2),
	employeeZipCode varchar(10),
	employeeEmail nvarchar(255),
	employeePhoneNumber varchar(20),
	companyID int,
	foreign key(companyID) References Company(companyID)
)

create table Respirator(
	respiratorID int IDENTITY (30000,1) PRIMARY KEY,
	respiratorManufacturer nvarchar(255),
	respiratorModelNumber nvarchar(255),
	respiratorStyle nvarchar(255),
)

create table QualitativeRespiratorFitTest(
	qualitativeTestID int IDENTITY(4000000,1) PRIMARY KEY,
	qualitativeTestType nvarchar(255),
	qualitativeTasteThreshold nvarchar(2),
	qualitativeTestPass bit
)

create table respiratorSize(
	respiratorsizeID int IDENTITY(1,1) PRIMARY KEY,
	respiratorSize nvarchar(255)
)

alter table QualitativeRespiratorFitTest
add qualitativeTestDate DATE,
	qualitativeTestTime TIME,
	qualitativeTestExpiration DATE



create table differentRespiratorSizes(
	respiratorID int,
	respiratorsizeID int,
	foreign key(respiratorID) References Respirator(respiratorID),
	foreign key(respiratorsizeID) References respiratorSize(respiratorsizeID)
)

create table QuantitativeRespiratorFitTest(
	quantitativeTestID int IDENTITY(4000000,1) PRIMARY KEY,
	maskType nvarchar(255),
	quantitativeTasteThreshold nvarchar(2),
	quantitativeOverallTestPass bit,
	quantitativeTestDate DATE,
	quantitativeTestTime TIME,
	quantitativeTestExpiration DATE,
	quantitativeTest1FitFactor nvarchar(7),
	quantitativeTest2FitFactor nvarchar(7),
	quantitativeTest3FitFactor nvarchar(7),
	quantitativeTest4FitFactor nvarchar(7),
	quantitativeTest5FitFactor nvarchar(7),
	quantitativeTest6FitFactor nvarchar(7),
	quantitativeTest7FitFactor nvarchar(7),
	quantitativeTest8FitFactor nvarchar(7),
	quantitativeOverallFitFactor nvarchar(7),
)
alter table QuantitativeRespiratorFitTest
add employeeID int
foreign key(employeeID) references Employee(employeeID)

alter table QualitativeRespiratorFitTest
add employeeID int
foreign key(employeeID) references Employee(employeeID)

alter table QuantitativeRespiratorFitTest
add respiratorID int
foreign key(respiratorID) references Respirator(respiratorID)

alter table QualitativeRespiratorFitTest
add respiratorID int
foreign key(respiratorID) references Respirator(respiratorID)

create table RespiratorStyle(
respiratorStyleID int IDENTITY(500,1) PRIMARY KEY,
respiratorStyleName nvarchar(255),
respiratorStyleFitFactor nvarchar(255)
)