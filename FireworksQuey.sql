SELECT ID, ItemLookupCode, Description +''+
CONVERT(NVARCHAR(MAX),ExtendedDescription) , Price as CustomerPrice, PriceC as BasePrice,
Price - PriceC as Commision,
Quantity, QuantityCommitted,
UnitOfMeasure FROM [dbo].[Item] 
WHERE  
--(Description +''+ CONVERT(NVARCHAR(MAX),ExtendedDescription) LIKE '%b01%'
--OR 
--description +''+ CONVERT(NVARCHAR(MAX),ExtendedDescription) LIKE '%c08%'
--OR 
--description +''+ CONVERT(NVARCHAR(MAX),ExtendedDescription) LIKE '%f36%'
--OR 
--description +''+ CONVERT(NVARCHAR(MAX),ExtendedDescription) LIKE '%f37%'
--OR 
--description +''+ CONVERT(NVARCHAR(MAX),ExtendedDescription) LIKE '%f40%'
--OR 
--description +''+ CONVERT(NVARCHAR(MAX),ExtendedDescription) LIKE '%b03%'
--OR 
--description +''+ CONVERT(NVARCHAR(MAX),ExtendedDescription) LIKE '%I01%'
--OR 
--description +''+ CONVERT(NVARCHAR(MAX),ExtendedDescription) LIKE '%A04%'
--OR 
--description +''+ CONVERT(NVARCHAR(MAX),ExtendedDescription) LIKE '%E02%'
--OR	
description +''+ CONVERT(NVARCHAR(MAX),ExtendedDescription) LIKE '%0%'
--) 
AND 
SubDescription1 = 1 
AND Quantity > 0
order by 
Quantity desc

--SELECT ID, ItemLookupCode, Description +''+
--CONVERT(NVARCHAR(MAX),ExtendedDescription) , Price as CustomerPrice, PriceC as BasePrice,
--Price - PriceC as Commision,
--Quantity, QuantityCommitted,
--UnitOfMeasure FROM [dbo].[Item] 
--WHERE  
--(Description +''+ CONVERT(NVARCHAR(MAX),ExtendedDescription) LIKE '%J04%')

--SELECT T1.COMPANY, * FROM [dbo].[Transaction] T0
--INNER JOIN [dbo].[Customer] T1 ON T0.CUSTOMERID = T1.ID 

--select  Description +''+ CONVERT(NVARCHAR(MAX),ExtendedDescription),* from TransactionEntry T0
--LEFT JOIN [dbo].[Item] T1 ON T0.ItemID = T1.ID
--WHERE  
--(Description +''+ CONVERT(NVARCHAR(MAX),ExtendedDescription) LIKE '%c05%')

--SELECT ID, ItemLookupCode, Description +''+
--CONVERT(NVARCHAR(MAX),ExtendedDescription) , Price as CustomerPrice, PriceC as BasePrice,
--Price - PriceC as Commision,
--Quantity, QuantityCommitted,
--UnitOfMeasure FROM [dbo].[Item] 
--WHERE  Description +''+ CONVERT(NVARCHAR(MAX),ExtendedDescription) LIKE '%p08%'
--order by 
--Quantity desc