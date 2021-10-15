CREATE PROCEDURE [dbo].[uspCustomerStatus]
AS

DECLARE @MonthEnd [Date]    =  EOMONTH(GETDATE(),-1)
DECLARE @StartOfMonth [Date]
SET @StartOfMonth = (SELECT DATEADD(DAY, 1, EOMONTH(@MonthEnd, -1)))

 SELECT 
 [CustomerId] 
,[FirstName]
,[LastName]
,[Active]
,[New]    
,[Lost]  
,[Reclaim] = CASE WHEN [Active] = 1 AND [Lost] = 1 THEN 1 ELSE 0 END
FROM(  
     SELECT 
     	 [CustomerId] 
	,[FirstName]
	,[LastName]
	,[Active] = SUM([Active])
	,[New]    = SUM([New])
	,[Lost]   = SUM([Lost])
    FROM( 
		  SELECT DISTINCT     [CustomerId] = C.[CustomerId]
			             ,[FirstName]
				     ,[LastName]
				     ,[Active]     = CASE WHEN S.[TransactionDate] BETWEEN  @StartOfMonth AND @MonthEnd AND S.[SaleAmount] > 0 THEN 1 ELSE 0 END
				     ,[New]        = CASE WHEN C.[InsertDate]      BETWEEN  @StartOfMonth AND @MonthEnd THEN 1 ELSE 0 END
				     ,[Lost]       = CASE WHEN S.[TransactionDate] < DATEADD(MONTH, -6, @MonthEnd)      THEN 1 ELSE 0 END
			FROM	[dbo].[Customer] C
			JOIN	[dbo].[Sales] S
				ON S.[CustomerId] = C.[CustomerId]
			WHERE  (S.[TransactionDate] BETWEEN  @StartOfMonth AND @MonthEnd AND S.[SaleAmount] > 0)
			OR     (S.[TransactionDate] < DATEADD(MONTH, -6, @MonthEnd))
			AND    (S.[TransactionDate] > DATEADD(MONTH, -9, @MonthEnd))
            )Main
     GROUP BY 
       	[CustomerId]
       ,[FirstName]
       ,[LastName]
    )Reclaim
