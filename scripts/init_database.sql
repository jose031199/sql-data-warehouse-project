--Script to restore database
/*
Script purpose:
Script to create database from scrach named DataWarehouse.
If the database exists, it will be dropped and recreated.
Additionally, the scriot sets up three schemas within the database:
'bronze','silver' and 'gold'

Warning: In case database exists it will delete all the database 
which is before executing this scripts, 
please verify that backuo has been properly saved. 

*/

USE master;
GO

-- DROP AND RECREATE DATABASE 'DataWarehouse' database
IF EXISTS (SELECT 1 FROM sys.databases where name = 'DataWarehouse')
BEGIN
	ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK INMEDIATE;
	DROP DATABASE DataWarehouse;
END
GO

--Use Dtabase Warehouse
use DataWarehouse;

--CREATE DATABASE 'DataWarehouse' database
CREATE DATABASE DatWarehouse;
GO

--CREATE SCHEMA

CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
