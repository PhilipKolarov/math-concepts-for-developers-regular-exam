CREATE DATABASE [Bulgaria Demographics]

USE [Bulgaria Demographics]

CREATE TABLE Years(
	Id SMALLINT PRIMARY KEY IDENTITY(1950, 1)
	,[Year] SMALLINT NOT NULL
);

CREATE TABLE [Demographics](
	Id INT PRIMARY KEY IDENTITY
	,[YearId] SMALLINT FOREIGN KEY REFERENCES Years(Id) NOT NULL
	,[Population] INT 
	,[Births] INT
	,[Deaths] INT
	,[Net Migration] INT
	,[Growth Rate (%)] DECIMAL (4, 2)
	,[Life Expectancy] DECIMAL (4, 2)
	,[Total Fertility Rate] DECIMAL(4, 2)
	,[Net Reproduction Rate] DECIMAL (3, 2)
	,[Infant Mortality Rate] DECIMAL (4, 2)
);

ALTER TABLE [Demographics]
ADD [Mean Age of Childbearing] DECIMAL (4, 2)

CREATE TABLE [Age of Childbearing](
	Id INT PRIMARY KEY IDENTITY
	,[YearId] SMALLINT FOREIGN KEY REFERENCES Years(Id) NOT NULL
	,[Total] INT
	,[Under 20] INT
	,[20-24] INT
	,[25-29] INT
	,[30-34] INT
	,[35-39] INT
	,[40-44] INT
	,[Over 45] INT
	,[Unknown] INT
);
