CREATE PROCEDURE [dbo].[uspCustomerSpent] 
AS
SELECT [FirstName]
      ,[LastName]
      ,[Address1]
      ,[City]
      ,[State]
      ,[ZipCode]
      ,[Phone]
      ,[Email]
	  ,[SaleAmount]
	  ,[TransactionDate]
FROM [dbo].[Customer] C
JOIN [dbo].[Sales] S
     ON S.[CustomerId] = C.[CustomerId]
WHERE S.[SaleAmount] > 50
AND   S.[TransactionDate] > DATEADD(MONTH, -6, GETDATE()) 