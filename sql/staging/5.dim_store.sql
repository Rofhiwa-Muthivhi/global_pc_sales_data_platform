 -- Create table if not exist
  DROP TABLE [Computer_std].[dbo].[dim_store]
  CREATE TABLE [Computer_std].[dbo].[dim_store](
    [Store_id] INT IDENTITY(1,1) PRIMARY KEY,
    [Shop_Name] [nvarchar](250) NOT NULL,
    [Shop_Age] [nvarchar](250) NOT NULL
   )
 
 --2 Insert data into table
   INSERT INTO [Computer_std].[dbo].[dim_store] (Shop_Name, Shop_Age)
   SELECT DISTINCT Shop_Name, Shop_Age
   FROM [Computer_std].[dbo].[raw_pc_data]

 --3 Select all data from dim store
   SELECT * FROM[Computer_std].[dbo].[dim_store]