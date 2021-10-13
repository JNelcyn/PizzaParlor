CREATE TABLE [dbo].[Customer]
(
    [CustomerId]  [INT]          NOT NULL,
    [FirstName]   [NVARCHAR](50) NOT NULL,
    [LastName]    [NVARCHAR](50) NOT NULL,
    [Address1]    [NVARCHAR](50) NOT NULL,
    [City]        [NVARCHAR](50) NOT NULL,
    [State]       [NVARCHAR](50) NOT NULL,
    [ZipCode]     [NVARCHAR](50) NOT NULL,
    [Phone]       [NVARCHAR](50) NULL,
    [Email]       [NVARCHAR](50) NULL,
    [InsertDate]  [DATETIME]     NOT NULL,
    [UpdatedDate] [DATETIME]     NULL,
CONSTRAINT [PK_Customer_CustomerId] PRIMARY KEY CLUSTERED ([CustomerId] ASC),
);
