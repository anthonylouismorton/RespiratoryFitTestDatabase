# RespiratoryFitTestDatabase

## Info

This is the master script for the Respiratory Fit Test Database. This was created using Microsoft SQL Server Management Studio. This will serve as the database for the respiratory fit test project. Changes to the database will be noted in the change log. This scipt was used to create the a database on Microsoft Azure. The Microsoft Azure database will be used for production of the Respiratory Fit Test Application. The local database will serve as a backup.

## Change Log

### Initial Creation/Upload - 6/20/2022

Initial creation and upload of the Respiratory Fit Test Database.

### Created procedures folder. - 7/10/2022

This folder contains the stored procedures scripts used to create stored procedures on the Microsoft Azure Respiratory Fit Test Database. These procedures are used in connection with an Express server to perform crud operations between the database and server.

### Updated SelectAllEmployees Procedure 7/17/2022

Updated SelectAllEmployees procedure to select Company name. This was needed on the front end to simplify updating an employee's company.

### Updated SelectEmployeeBySSN Procedure 7/18/2022

Created procedure SelectEmployeeBySSN. Not getting employee by SSN. Substituted getting employee by ID and the procedure worked. Possible issue by getting employee using an nvarchar instead of an int or possible issue with ssn not being a unique type in the database.

### Updated SelectEmployeeBySSN Procedure and Employee Table 7/18/2022

Procedure SelectEmployeeBySSN was updated so that ssn is of int datatype instead of nvarchar. Also updated employee table so that ssn is of int datatype.

### Create Procedure SelectRespiratorModels 7/22/2022

Procedure SelectRespiratorModels was created and accepts a parameter of respirator manufacturer. This is used so that a user on the front end so that when they pick a manufacturer they are given all models already in the database by that manufacturer.

### Update SelectQuantitativeFitTests and SelectEmployeeQualitativeFitTests Procedure 7/24/2022

Procedure SelectQuantitativeFitTests and SelectEmployeeQualitativeFitTests each left join with the respirator table to get the respirator manufacturer and model number.

## Remarks

### 7/10/2022

Need to update script for creating Respiratory Fit Test Database. The schema was updated on the Azure database, but has not been updated on the local server. Additionally, the script on this repo has not been updated as well.
