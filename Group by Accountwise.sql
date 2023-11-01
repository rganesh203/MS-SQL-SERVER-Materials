select * from [dbo].[bank]

SELECT [account_no],sum(transaction_amount) as accountwise_sum
FROM [dbo].[bank]
GROUP BY [account_no];