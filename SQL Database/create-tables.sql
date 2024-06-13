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

CREATE TABLE [Boys and Girls Births](
	Id INT PRIMARY KEY IDENTITY
	,[YearId] SMALLINT FOREIGN KEY REFERENCES Years(Id) NOT NULL
	,[Total Births] INT
	,[Boys] INT
	,[Girls] INT
);

CREATE TABLE [Female Population by Age Groups](
	Id INT PRIMARY KEY IDENTITY
	,[YearId] SMALLINT FOREIGN KEY REFERENCES Years(Id) NOT NULL
	,[Total] INT
	,[0] INT
	,[1-4] INT
	,[5-9] INT
	,[10-14] INT
	,[15-19] INT
	,[20-24] INT
	,[25-29] INT
	,[30-34] INT
	,[35-39] INT
	,[40-44] INT
	,[45-49] INT
	,[50-54] INT
	,[55-59] INT
	,[60-64] INT
	,[65-69] INT
	,[70-74] INT
	,[75-79] INT
	,[80-84] INT
	,[Over 84] INT
);

CREATE TABLE [Female Deaths by Age Groups](
	Id INT PRIMARY KEY IDENTITY
	,[YearId] SMALLINT FOREIGN KEY REFERENCES Years(Id) NOT NULL
	,[Total] INT
	,[0] SMALLINT
	,[1-4] SMALLINT
	,[5-9] SMALLINT
	,[10-14] SMALLINT
	,[15-19] SMALLINT
	,[20-24] SMALLINT
	,[25-29] SMALLINT
	,[30-34] SMALLINT
	,[35-39] SMALLINT
	,[40-44] SMALLINT
	,[45-49] SMALLINT
	,[50-54] SMALLINT
	,[55-59] SMALLINT
	,[60-64] SMALLINT
	,[65-69] SMALLINT
	,[70-74] SMALLINT
	,[75-79] SMALLINT
	,[80-84] SMALLINT
	,[Over 84] SMALLINT
);
