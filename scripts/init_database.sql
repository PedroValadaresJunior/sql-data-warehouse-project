-- master: Armazena configurações do servidor e informações críticas.

-- model: Serve como modelo para novos bancos de dados.

-- msdb: Armazena dados sobre jobs, tarefas agendadas e backups.

-- tempdb: Usado para armazenar dados temporários durante a execução de consultas e outras operações.

-- GO separar batches quando trabalhamos com múltiplos estados SQL.

USE master;
GO

-- Exclui e recria o banco de dados 'DataWarehouse'
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
    ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE DataWarehouse;
END;
GO

-- criando o banco de dados 'DataWarehouse' 
CREATE DATABASE DataWarehouse;
GO

USE DataWarehouse;
GO

-- Criando Schemas
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO
