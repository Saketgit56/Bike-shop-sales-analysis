--CLEANED DimDate table
SELECT [DateKey]
      ,[FullDateAlternateKey] AS Date
		 --,[DayNumberOfWeek]
      ,[EnglishDayNameOfWeek] AS Day
		  --,[SpanishDayNameOfWeek]
		  --,[FrenchDayNameOfWeek]
		  --,[DayNumberOfMonth]
		  --,[DayNumberOfYear]
		  --,[WeekNumberOfYear]
      ,[EnglishMonthName] AS Month
	  ,LEFT(EnglishMonthName,3) AS Monthshort
		  --,[SpanishMonthName]
		  --,[FrenchMonthName]
      ,[MonthNumberOfYear] AS Month_no		
      ,[CalendarQuarter] AS Quarter
      ,[CalendarYear] AS Year
		  --,[CalendarSemester]
		  --,[FiscalQuarter]
		  --,[FiscalYear]
		  --,[FiscalSemester]
  FROM [AdventureWorksDW2019].[dbo].[DimDate]
  WHERE CalendarYear BETWEEN 2019 AND 2021;