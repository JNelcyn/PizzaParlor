
USE master
GO

IF NOT EXISTS (
    SELECT name
        FROM sys.databases
        WHERE name = N'CRM'
)
CREATE DATABASE CRM
GO