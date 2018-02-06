CREATE TABLE [dbo].[VideoLibrary]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [Title] NVARCHAR(50) NOT NULL, 
    [Plot] NVARCHAR(MAX) NOT NULL, 
    [Genre] NVARCHAR(50) NOT NULL, 
    [Price] INT NULL, 
    [Rating] INT NULL, 
    [Year] INT NULL
)