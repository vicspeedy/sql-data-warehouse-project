/*
===========================================================================================
-- Create Database AND Schemas
===========================================================================================
Script Purpose:
	Este script crea la nueva base de datos 'DataWarehouse' antes chequear si existe.
	Si la base de datos existe, es eliminada (dropped) y creada. adicionalmente, el script establece tres esquemas 
	dentro de la base de datos: 'bronze', 'silver' y 'gold'.


WARNING:


*/

-- Usar BD Master para crear la BD de 'DataWarehouse'
USE [master]
GO

-- Eliminar y Crear la BD 'DataWarehouse' SI ES QUE EXISTE
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
	ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE DataWarehouse;
END;
GO

-- Crear BD 'DataWarehouse'
CREATE DATABASE DataWarehouse;

-- Usar BD 'DataWarehouse'
USE DataWarehouse;
GO

-- 1 Paso Crear los Esquemas para organizarnos
-- Ruta: DataWarehouse> Security> Schemas
-- ** Usar el separador "GO"
CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
GO

