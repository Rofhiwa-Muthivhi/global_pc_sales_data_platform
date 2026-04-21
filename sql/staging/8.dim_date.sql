 -- Create table if not exist
  DROP TABLE [Computer_std].[dbo].[dim_date]
  CREATE TABLE [Computer_std].[dbo].[dim_date](
    [Date_id] INT IDENTITY(1,1) PRIMARY KEY,
    [Purchase_date] [nvarchar](250) NOT NULL,
    [Ship_date] [nvarchar](250) NOT NULL
   )
 
 --2 Insert data into table
   INSERT INTO [Computer_std].[dbo].[dim_date] (Purchase_date, Ship_date)
   SELECT DISTINCT Purchase_date, Ship_date
   FROM [Computer_std].[dbo].[raw_pc_data]

 --3 Select all data from dim date
   SELECT * FROM[Computer_std].[dbo].[dim_date]