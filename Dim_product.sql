--Cleaned DimProduct
SELECT p.[ProductKey]
      ,[ProductAlternateKey] AS ProductItemCode
      --,[ProductSubcategoryKey]
      --,[WeightUnitMeasureCode]
      --,[SizeUnitMeasureCode]
      ,[EnglishProductName] AS ProductName,
	  
	  pc.EnglishProductCategoryName AS ProductCategory,  --Joined in from product category table
	  psc.englishproductsubcategoryname AS ProductSubCategory -- Joined in from product sub category table
      --,[SpanishProductName]
      --,[FrenchProductName]
      --,[StandardCost]
      --,[FinishedGoodsFlag]
      ,[Color] AS ProductColor
      --,[SafetyStockLevel]
      --,[ReorderPoint]
      --,[ListPrice]
      ,[Size] AS ProductSize
      --,[SizeRange]
      --,[Weight]
      --,[DaysToManufacture]
      ,[ProductLine]
      --,[DealerPrice]
      --,[Class]
      --,[Style]
      ,[ModelName] AS ProductModelName
      --,[LargePhoto]
      ,[EnglishDescription] AS Description,
      --,[FrenchDescription]
      --,[ChineseDescription]
      --,[ArabicDescription]
      --,[HebrewDescription]
      --,[ThaiDescription]
      --,[GermanDescription]
      --,[JapaneseDescription]
      --,[TurkishDescription]
      --,[StartDate]
      --,[EndDate]
      --,[Status],
	  Isnull(status,'Outdated') AS ProductStatus

  FROM [AdventureWorksDW2019].[dbo].[DimProduct] AS p
  Left join dbo.DimProductSubcategory AS psc
  ON p.ProductSubcategoryKey=psc.ProductSubcategoryKey
  Left join dbo.DimProductCategory AS pc
  ON psc.ProductCategoryKey=pc.ProductCategoryKey
  Order by p.ProductKey
