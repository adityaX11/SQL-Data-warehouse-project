


use master;
go
-- drop if the recreate the database
if exists (select 1 from sys.databases from name='DataWarehouse')
Begin
  alter database DataWarehouse set SINGLE_USER with rollback immediate;
  drop database DataWarehouse;
end;
go

--Create the database that name is 'DataWarehouse'
create database DataWarehouse;
use DataWarehouse


-- Create the Schemas

create schema bronze;
go
create schema silver;
go
create schema gold;
go
