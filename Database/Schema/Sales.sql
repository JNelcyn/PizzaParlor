CREATE TABLE [dbo].[Sales]
(
    [SalesId]          [INT]            NOT NULL, 
    [CustomerId]       [INT]            NOT NULL, 
    [SaleAmount]       [Decimal] (19,2) NOT NULL,
    [TransactionDate]  [Datetime]       NOT NULL,
CONSTRAINT [PK_Sales_SalesID] PRIMARY KEY ([SalesID] ASC),
CONSTRAINT [FK_Sales_CustomerId]  FOREIGN KEY ([CustomerId]) REFERENCES [dbo].[Customer] ([CustomerId])
);
GO 
CREATE NONCLUSTERED INDEX [NCIX_Sales]
	ON [dbo].[Sales] ([CustomerId],[SalesId])
	INCLUDE ([TransactionDate],[SaleAmount])
