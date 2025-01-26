
-- Cleaning the Super Store Data Set

 select *
 from [Portfolio Project].[dbo].[Superstore]



 -- Standardize the date format


 select Ship_Date, CONVERT(Date, Ship_Date)
 from [Portfolio Project].[dbo].[Superstore]

 Update [Portfolio Project].[dbo].[Superstore]
 SET Ship_Date = CONVERT(Date,Ship_Date)

 ALTER TABLE [Portfolio Project].[dbo].[Superstore]
 Add Ship_DateConverted Date;

 Update [Portfolio Project].[dbo].[Superstore]
 SET Ship_DateConverted = CONVERT(Date,Ship_Date)



 -- Delete unused column

 select *
 from [Portfolio Project].[dbo].[Superstore]


 ALTER TABLE [Portfolio Project].[dbo].[Superstore]
 DROP COLUMN Order_Date, Ship_Date

 

 select Order_ID,
 Ship_Mode,
 Customer_ID,
 Customer_Name;
 from [Portfolio Project].[dbo].[Superstore]

 EXEC sp_rename
 'Order ID',
 'Ship Mode',
 'Customer ID',
 'Customer Name', 'COLUMN';


